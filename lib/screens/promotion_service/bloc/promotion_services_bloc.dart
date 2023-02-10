import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../utils/utils.dart';
import '../../../model/promotion_model/promotion_model.dart';
import '../../../model/service_model/service_model.dart';
import '../../../popup/choose_service_promotion.dart';
import '../../../widget/image_cached.dart';

part 'promotion_services_event.dart';
part 'promotion_services_state.dart';
part 'promotion_services_bloc.freezed.dart';
part '../promotion_services.dart';

class PromotionServicesBloc
    extends Bloc<PromotionServicesEvent, PromotionServicesState> {
  final searchController = TextEditingController();
  final refreshController = RefreshController();
  late int workplace_id;
  PromotionServicesBloc() : super(const PromotionServicesState()) {
    on<PromotionServicesEvent>((event, emit) {
      
    });
    on<GetOldService>((event, emit) => emit(state.copyWith(
        listServicePromotion: event.listService,
        listDeletePromotion: event.listServiceDelete)));

    on<StartedService>(started);
    on<OnLoad>(onLoad);
    on<OnRefresh>(onRefresh);
    on<AddService>(addService);
    on<DeleteService>(deleteService);
  }
  onRefresh(OnRefresh event, Emitter<PromotionServicesState> emit) async {
    try {
      if (!refreshController.isRefresh) emit(state.copyWith(isLoading: true));
      await DataManager.serviceServices.list(
          id: workplace_id,
          page: 1,
          search: searchController.text,
          list_active: [
            true
          ],
          list_group_id: [],
          list_approved_key: [
            'admin.approved.ok'
          ]).then((value) => emit(state.copyWith(
            listService: value.service_list,
            total_count: value.total_count,
          )));
    } catch (e) {
      log(e.toString());
      emit(state.copyWith(isLoading: false));
      refreshController.refreshFailed();
    } finally {
      emit(state.copyWith(isLoading: false));
      refreshController.refreshCompleted();
    }
  }

  deleteService(
      DeleteService event, Emitter<PromotionServicesState> emit) async {
    await Utils.deletePopup(
      onConfirm: () {
        emit(state.copyWith(
            listDeletePromotion: state.listDeletePromotion.toList()
              ..addIf(event.value.id > 0, event.value),
            listServicePromotion: state.listServicePromotion.toList()
              ..remove(event.value)));
        Get.back();
      },
    );
  }

  addService(AddService event, Emitter<PromotionServicesState> emit) async {
    if (state.listDeletePromotion.indexWhere((element) =>
            element.id >= 0 && element.service_id == event.value.id) >=
        0) {
      emit(state.copyWith(
          listServicePromotion: state.listServicePromotion.toList()
            ..add(state.listDeletePromotion.firstWhere(
                (element) => element.service_id == event.value.id))));
    } else {
      emit(state.copyWith(
          listServicePromotion: state.listServicePromotion.toList()
            ..add(ServicePromotion(
              service_id: event.value.id,
              name: event.value.name,
              image: event.value.image,
              price: event.value.price,
            ))));
    }
  }

  onLoad(OnLoad event, Emitter<PromotionServicesState> emit) async {
    try {
      emit(state.copyWith(page: state.page + 1));
      if (state.page <= Utils().getTotalPage(state.total_count)) {
        emit(state.copyWith(isLoading: true));
        await DataManager.serviceServices.list(
            id: workplace_id,
            page: state.page,
            search: searchController.text,
            list_active: [
              true
            ],
            list_group_id: [],
            list_approved_key: [
              'admin.approved.ok'
            ]).then((value) => emit(state.copyWith(
              listService: [...state.listService, ...value.service_list],
              total_count: value.total_count,
            )));
      }
    } catch (e) {
      log(e.toString());
      emit(state.copyWith(isLoading: false));
      refreshController.loadFailed();
    } finally {
      emit(state.copyWith(isLoading: false));
      refreshController.loadComplete();
    }
  }

  started(StartedService event, Emitter<PromotionServicesState> emit) async {
    try {
      workplace_id = event.id;
      if (!refreshController.isRefresh) {
        EasyLoading.show();
      }
      await DataManager.serviceServices.list(
          id: workplace_id,
          page: 1,
          search: searchController.text,
          list_active: [
            true
          ],
          list_group_id: [],
          list_approved_key: [
            'admin.approved.ok'
          ]).then((value) => emit(state.copyWith(
            listService: value.service_list,
            total_count: value.total_count,
          )));
    } catch (e) {
      log(e.toString());
      EasyLoading.dismiss();
      refreshController.refreshFailed();
    } finally {
      EasyLoading.dismiss();
      refreshController.refreshCompleted();
    }
  }
}
