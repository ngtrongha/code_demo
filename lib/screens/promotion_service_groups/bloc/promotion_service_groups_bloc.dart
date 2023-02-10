import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../utils/utils.dart';
import '../../../model/promotion_model/promotion_model.dart';
import '../../../model/service_group/service_group.dart';
import '../../../popup/choose_service_group_promotion.dart';

part 'promotion_service_groups_event.dart';
part 'promotion_service_groups_state.dart';
part 'promotion_service_groups_bloc.freezed.dart';
part '../promotion_service_groups.dart';

class PromotionServiceGroupsBloc
    extends Bloc<PromotionServiceGroupsEvent, PromotionServiceGroupsState> {
  late int workplace_id;
  final searchController = TextEditingController();
  PromotionServiceGroupsBloc() : super(const PromotionServiceGroupsState()) {
    on<PromotionServiceGroupsEvent>((event, emit) {});
    on<GetOldGroup>((event, emit) => emit(state.copyWith(
        listServiceGroupPromotion: event.listService,
        listDeletePromotion: event.listServiceDelete)));
    on<StartedGroup>(started);
    on<AddGroup>(addGroup);
    on<DeleteGroup>(deleteGroup);
  }
  deleteGroup(
      DeleteGroup event, Emitter<PromotionServiceGroupsState> emit) async {
    emit(state.copyWith(
        listDeletePromotion: state.listDeletePromotion.toList()
          ..addIf(event.value.id > 0, event.value),
        listServiceGroupPromotion: state.listServiceGroupPromotion.toList()
          ..remove(event.value)));
  }

  addGroup(AddGroup event, Emitter<PromotionServiceGroupsState> emit) async {
    if (state.listDeletePromotion.indexWhere((element) =>
            element.id >= 0 && element.service_group_id == event.value.id) >=
        0) {
      emit(state.copyWith(
          listServiceGroupPromotion: state.listServiceGroupPromotion.toList()
            ..add(state.listDeletePromotion.firstWhere(
                (element) => element.service_group_id == event.value.id))));
    } else {
      emit(state.copyWith(
          listServiceGroupPromotion: state.listServiceGroupPromotion.toList()
            ..add(ServicePromotion(
              service_group_id: event.value.id,
              name: event.value.name,
            ))));
    }
  }

  started(StartedGroup event, Emitter<PromotionServiceGroupsState> emit) async {
    try {
      workplace_id = event.id;
      EasyLoading.show();
    } catch (e) {
      log(e.toString());
      EasyLoading.dismiss();
    } finally {
      EasyLoading.dismiss();
    }
  }
}
