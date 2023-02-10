import 'dart:developer';
import 'dart:io';

import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:html_editor_enhanced/html_editor.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';
// ignore: depend_on_referenced_packages
import 'package:path/path.dart';

import '../../../../../../utils/utils.dart';
import '../../../model/promotion_list/promotion_list.dart';
import '../../../model/promotion_model/promotion_model.dart';
import '../../../model/system_config/system_config.dart';
import '../../../widget/image_cached.dart';
import '../../../widget/photos_gallery/photos_gallery.dart';
import '../../promotion_service/bloc/promotion_services_bloc.dart';
import '../../promotion_service_groups/bloc/promotion_service_groups_bloc.dart';

part 'promotion_entry_event.dart';
part 'promotion_entry_state.dart';
part 'promotion_entry_bloc.freezed.dart';
part '../promotion_entry.dart';

class PromotionEntryBloc
    extends Bloc<PromotionEntryEvent, PromotionEntryState> {
  final type_id = int.parse(Get.parameters['type_id'] ?? '-1');
  final id = int.parse(Get.parameters['id'] ?? '-1');
  final workplace_id = int.parse(Get.parameters['workplace_id'] ?? '-1');
  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final codeController = TextEditingController();
  final minValueController = TextEditingController();
  final discoutController = TextEditingController();
  final maxValueController = TextEditingController();
  final amountController = TextEditingController();
  final amountUseController = TextEditingController();
  final timelapseController = TextEditingController();
  final controller = HtmlEditorController();
  final priceFormatter = CurrencyTextInputFormatter(locale: 'vi', symbol: 'đ');
  final discountFormatter =
      CurrencyTextInputFormatter(locale: 'vi', symbol: '%');
  final maxValueFormatter =
      CurrencyTextInputFormatter(locale: 'vi', symbol: '%');
  final timelapseFormatter =
      CurrencyTextInputFormatter(locale: 'vi', symbol: 'giờ');
  final amountFormatter =
      CurrencyTextInputFormatter(locale: 'vi', symbol: 'mã');
  final amountUseFormatter =
      CurrencyTextInputFormatter(locale: 'vi', symbol: 'lần');
  final discountprecentFormatter =
      CurrencyTextInputFormatter(locale: 'vi', symbol: 'đ');
  PromotionEntryBloc()
      : super(PromotionEntryState(
            discountType: listDiscountType.first,
            discountScope: listDiscountScope.first,
            discountTime: listDiscountTime.first,
            listDiscountTime: listDiscountTime,
            listDiscountScope: listDiscountScope,
            listDiscountType: listDiscountType,
            fromDate: DateTime.now(),
            toDate: DateTime.now(),
            openDate: DateTime.now())) {
    on<PromotionEntryEvent>((event, emit) {});
    on<AddService>((event, emit) => emit(state.copyWith(
        listService: event.listService,
        listServiceDelete: event.listServiceDelete)));
    on<AddServiceGroup>((event, emit) => emit(state.copyWith(
        listServiceGroup: event.listGroupService,
        listServiceGroupDelete: event.listServiceGroupDelete)));
    on<ChooseDiscountTime>(
        (event, emit) => emit(state.copyWith(discountTime: event.value)));
    on<ChooseDiscountType>((event, emit) {
      discoutController.clear();
      maxValueController.clear();
      emit(state.copyWith(discountType: event.value));
    });
    on<ChooseDiscountScope>((event, emit) => emit(state.copyWith(
        discountScope: event.value, listService: [], listServiceGroup: [])));
    on<ChangeActive>(
        (event, emit) => emit(state.copyWith(isActive: !state.isActive)));
    on<ChooseEffectiveTime>(chooseEffectiveTime);
    on<ChooseEndTime>(chooseEndTime);
    on<ChooseTimeStartCollecting>(chooseTimeStartCollecting);
    on<ChooseAvatar>(chooseAvatar);
    on<ChooseImage>(chooseImage);
    on<DeleteImage>(deleteImage);
    on<StartedEntry>(started);
    on<Create>(create);
  }
  deleteImage(DeleteImage event, Emitter<PromotionEntryState> emit) async {
    if (event.image is File) {
      emit(state.copyWith(
          listImage: state.listImage.toList()..remove(event.image)));
    } else {
      emit(state.copyWith(
          media_delete_list: state.media_delete_list.toList()..add(event.image),
          promotion: state.promotion.copyWith(
              media_list: state.promotion.media_list.toList()
                ..remove(event.image))));
    }
  }

  create(Create event, Emitter<PromotionEntryState> emit) async {
    try {
      if (!formKey.currentState!.validate()) {
        return;
      }
      EasyLoading.show();
    } catch (e) {
      log(e.toString());
      EasyLoading.dismiss();
    } finally {
      EasyLoading.dismiss();
    }
  }

  started(StartedEntry event, Emitter<PromotionEntryState> emit) async {
    try {
      EasyLoading.show();
      if (id > 0) {}
    } catch (e) {
      log(e.toString());
      EasyLoading.dismiss();
    } finally {
      EasyLoading.dismiss();
    }
  }

  chooseImage(ChooseImage event, Emitter<PromotionEntryState> emit) async {
    final images = await Get.toNamed(PhotosGalleryWidget.path) as List<File>?;
    if (images != null) {
      emit(state.copyWith(listImage: state.listImage.toList()..addAll(images)));
    }
  }

  chooseAvatar(ChooseAvatar event, Emitter<PromotionEntryState> emit) async {
    final images = await Get.toNamed(PhotosGalleryWidget.path, arguments: 1)
        as List<File>?;
    if (images != null) {
      emit(state.copyWith(avatar: images[0]));
    }
  }

  chooseEffectiveTime(
      ChooseEffectiveTime event, Emitter<PromotionEntryState> emit) async {
    await showDatePicker(
            context: Get.context!,
            initialDate: state.fromDate,
            firstDate: DateTime.now(),
            lastDate: DateTime.now().add(const Duration(days: 365)))
        .then((value) {
      if (value != null) {
        emit(state.copyWith(fromDate: value));
      }
    });
  }

  chooseEndTime(ChooseEndTime event, Emitter<PromotionEntryState> emit) async {
    await showDatePicker(
            context: Get.context!,
            initialDate: state.toDate,
            firstDate: DateTime.now(),
            lastDate: DateTime.now().add(const Duration(days: 365)))
        .then((value) {
      if (value != null) {
        emit(state.copyWith(toDate: value));
      }
    });
  }

  chooseTimeStartCollecting(ChooseTimeStartCollecting event,
      Emitter<PromotionEntryState> emit) async {
    await showDatePicker(
            context: Get.context!,
            initialDate: state.openDate,
            firstDate: DateTime.now(),
            lastDate: DateTime.now().add(const Duration(days: 365)))
        .then((value) {
      if (value != null) {
        emit(state.copyWith(openDate: value));
      }
    });
  }
}
