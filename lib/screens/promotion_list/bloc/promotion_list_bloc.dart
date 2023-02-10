import 'dart:developer';

import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../../../../../utils/utils.dart';
import '../../../model/promotion_list/promotion_list.dart';
import '../../../model/system_config/system_config.dart';
import '../../../popup/promotion_type_popup.dart';
import '../../promotion_detail/bloc/promotion_detail_bloc.dart';

part 'promotion_list_event.dart';
part 'promotion_list_state.dart';
part 'promotion_list_bloc.freezed.dart';
part '../promotion_list.dart';

class PromotionListBloc extends Bloc<PromotionListEvent, PromotionListState> {
  final id = int.parse(Get.parameters['id'] as String);
  final refresherController = RefreshController();
  final searchController = TextEditingController();
  String checkexistDate(final DateTime date) {
    final now = DateTime.now().add(const Duration(days: 2));
    if (now.compareTo(date) < 0) {
      return 'Hạn đến ${Utils.dateToString('dd/MM/yyyy', date)}';
    } else {
      if (date.day - DateTime.now().day == 0) {
        return 'Hết hạn trong hôm nay';
      }
      return 'Hết hạn sau ${date.day - DateTime.now().day} ngày';
    }
  }

  Color checkexistDateColor(final DateTime date) {
    final now = DateTime.now().add(const Duration(days: 2));
    if (now.compareTo(date) < 0) {
      return Colors.black87;
    } else {
      return Colors.red;
    }
  }

  PromotionListBloc() : super(const PromotionListState()) {
    on<PromotionListEvent>((event, emit) {});
    on<IsSearch>((event, emit) {
      searchController.clear();
      emit(state.copyWith(isSearch: !state.isSearch));
    });
    on<RemoveDateTime>(
        (event, emit) => emit(state.copyWith(fromDate: null, toDate: null)));
    on<Started>(started);
    on<SyncData>(syncData);
    on<ShowFilter>(showFilter);
    on<ChooseApproved>(chooseApproved);
    on<ChooseType>(chooseType);
    on<ChooseTime>(chooseTime);
    on<ChooseActive>(chooseActive);
    on<OnRefresh>(onRefresh);
    on<OnLoad>(onLoad);
  }
  chooseTime(ChooseTime event, Emitter<PromotionListState> emit) async {
    switch (event.type) {
      case 'from':
        await showDatePicker(
                context: Get.context!,
                initialDate: state.fromDate ?? DateTime.now(),
                firstDate: DateTime.now(),
                lastDate: DateTime.now().add(const Duration(days: 365)))
            .then((value) {
          if (value != null) {
            emit(state.copyWith(fromDate: value));
          }
        });
        break;
      default:
        await showDatePicker(
                context: Get.context!,
                initialDate: state.toDate ?? DateTime.now(),
                firstDate: DateTime.now(),
                lastDate: DateTime.now().add(const Duration(days: 365)))
            .then((value) {
          if (value != null) {
            emit(state.copyWith(toDate: value));
          }
        });
    }
  }

  onRefresh(OnRefresh event, Emitter<PromotionListState> emit) async {
    try {
      if (!refresherController.isRefresh) {
        emit(state.copyWith(isListLoading: true));
      }
    } catch (e) {
      log(e.toString());
      refresherController.refreshFailed();
      emit(state.copyWith(isListLoading: false));
    } finally {
      refresherController.refreshCompleted();
      emit(state.copyWith(isListLoading: false));
    }
  }

  onLoad(OnLoad event, Emitter<PromotionListState> emit) async {
    try {
      emit(state.copyWith(page: state.page + 1));
      // if (state.page <= Utils().getTotalPage(state.total_count)) {
      //   emit(state.copyWith(isListLoading: true));

      // }
    } catch (e) {
      log(e.toString());
      emit(state.copyWith(isListLoading: false));
    } finally {
      emit(state.copyWith(isListLoading: false));
    }
  }

  syncData(SyncData event, Emitter<PromotionListState> emit) async {
    try {
      EasyLoading.show();
      // await DataManager.discountServices.sync(id: id).then((value) {
      //   if (value) {
      //     add(const Started());
      //   }
      // });
    } catch (e) {
      log(e.toString());
      EasyLoading.dismiss();
    } finally {
      EasyLoading.dismiss();
    }
  }

  chooseType(ChooseType event, Emitter<PromotionListState> emit) async =>
      emit(state.copyWith(
          listType: state.listType
              .toList()
              .map((e) => e.copyWith(
                  value_bit:
                      e.id == event.config.id ? !e.value_bit : e.value_bit))
              .toList()));
  chooseApproved(
          ChooseApproved event, Emitter<PromotionListState> emit) async =>
      emit(state.copyWith(
          listApproved: state.listApproved
              .toList()
              .map((e) => e.copyWith(
                  value_bit:
                      e.id == event.config.id ? !e.value_bit : e.value_bit))
              .toList()));

  chooseActive(ChooseActive event, Emitter<PromotionListState> emit) async {
    if (!state.list_active.contains(event.active)) {
      emit(state.copyWith(
          list_active: state.list_active.toList()..add(event.active)));
    } else {
      emit(state.copyWith(
          list_active: state.list_active.toList()..remove(event.active)));
    }
  }

  showFilter(ShowFilter event, Emitter<PromotionListState> emit) async =>
      emit(state.copyWith(
          showTime: event.showTime,
          showStatus: event.showActive,
          showApproved: event.showApproved,
          showType: event.showType));
  started(Started event, Emitter<PromotionListState> emit) async {
    try {
      emit(state.copyWith(isListLoading: true));

      if (state.listType.isEmpty) {}
      if (state.listApproved.isEmpty) {}
    } catch (e) {
      log(e.toString());
      refresherController.loadFailed();
      emit(state.copyWith(isListLoading: false));
    } finally {
      refresherController.loadComplete();
      emit(state.copyWith());
      emit(state.copyWith(
          showTime: false,
          showStatus: false,
          showApproved: false,
          isListLoading: false,
          showType: false));
    }
  }
}
