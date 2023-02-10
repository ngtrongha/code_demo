import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../model/customer_promotion/customer_promotion.dart';
import '../../../model/promotion_model/promotion_model.dart';
import '../../../utils/utils.dart';
import '../ui_submited.dart';
import '../ui_watting_submit.dart';

part 'promotion_detail_event.dart';
part 'promotion_detail_state.dart';
part 'promotion_detail_bloc.freezed.dart';
part '../promotion_detail.dart';

class PromotionDetailBloc
    extends Bloc<PromotionDetailEvent, PromotionDetailState> {
  final id = int.parse(Get.parameters['id'] ?? '-1');
  final workplace_id = int.parse(Get.parameters['workplace_id'] ?? '-1');
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
      return Colors.black;
    } else {
      return Colors.red;
    }
  }

  PromotionDetailBloc() : super(const PromotionDetailState(tab: 'Tham gia')) {
    on<PromotionDetailEvent>((event, emit) {});
    on<ChangeTab>((event, emit) => emit(state.copyWith(tab: event.tab)));
    on<Started>(started);
    on<Active>(active);
  }
  active(Active event, Emitter<PromotionDetailState> emit) async {
    try {
      EasyLoading.show();
      // await DataManager.discountServices
      //     .active(
      //         id: id,
      //         workplace_id: workplace_id,
      //         active: !state.promotion.active)
      //     .then((value) {
      //   if (value) {
      //     emit(state.copyWith(
      //         promotion:
      //             state.promotion.copyWith(active: !state.promotion.active)));
      //   }
      // });
    } catch (e) {
      log(e.toString());
      EasyLoading.dismiss();
    } finally {
      EasyLoading.dismiss();
    }
  }

  started(Started event, Emitter<PromotionDetailState> emit) async {
    try {
      EasyLoading.show();
      // await DataManager.discountServices
      //     .view(id: id, workplace_id: workplace_id)
      //     .then((value) => emit(state.copyWith(promotion: value)));
      // if (state.promotion.approved_key != 'admin.approved.waiting') {
      //   await DataManager.discountServices
      //       .listCustomerDiscount(page: 1, workplace_id: workplace_id)
      //       .then((value) => emit(state.copyWith(
      //           listCustomer: value.customer_voucher_list,
      //           total_count: value.total_count)));
      // }
    } catch (e) {
      log(e.toString());
      EasyLoading.dismiss();
    } finally {
      EasyLoading.dismiss();
    }
  }
}
