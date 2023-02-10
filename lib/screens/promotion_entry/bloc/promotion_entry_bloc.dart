import 'dart:developer';
import 'dart:io';

import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter_azicloud/module/main/model/image_data/image_data.dart';
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

import '../../../../../../utils/button_style/prime_style.dart';
import '../../../../../../utils/image_cached.dart';
import '../../../../../../utils/photos_gallery/photos_gallery.dart';
import '../../../../../../utils/popup/full_html_editer/full_html_editer.dart';
import '../../../../../../utils/upload_image_widget.dart';
import '../../../../../../utils/utils.dart';
import '../../../../../base/data_manager.dart';
import '../../../../../main/model/system_config/system_config.dart';
import '../../../../service/model/service_group/service_group.dart';
import '../../../../service/model/service_model/service_model.dart';
import '../../../model/promotion_list/promotion_list.dart';
import '../../../model/promotion_model/promotion_model.dart';
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
    on<PromotionEntryEvent>((event, emit) {
      if (event is ChooseEffectiveTime) {
        Utils.mainBloc.add(const UpdateEvent('ChooseEffectiveTime'));
      } else if (event is ChooseEndTime) {
        Utils.mainBloc.add(const UpdateEvent('ChooseEndTime'));
      } else if (event is ChooseTimeStartCollecting) {
        Utils.mainBloc.add(const UpdateEvent('ChooseTimeStartCollecting'));
      } else if (event is ChooseAvatar) {
        Utils.mainBloc.add(const UpdateEvent('ChooseAvatar'));
      } else if (event is ChooseImage) {
        Utils.mainBloc.add(const UpdateEvent('ChooseImage'));
      } else if (event is StartedEntry) {
        Utils.mainBloc.add(const UpdateEvent('Started'));
      } else if (event is ChooseDiscountTime) {
        Utils.mainBloc.add(const UpdateEvent('ChooseDiscountTime'));
      } else if (event is ChooseDiscountType) {
        Utils.mainBloc.add(const UpdateEvent('ChooseDiscountType'));
      } else if (event is ChooseDiscountScope) {
        Utils.mainBloc.add(const UpdateEvent('ChooseDiscountScope'));
      }
    });
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
      var avatar = ImageData(
        server_files: state.promotion.server_files,
        filename: state.promotion.filename,
        filepath: state.promotion.filepath,
      );
      var mediaList = <ImageData>[];
      if (state.avatar != null) {
        avatar = (await Utils()
                .uploadImage(images: [state.avatar!], module: 'discount'))
            .first;
      }
      if (state.listImage.isNotEmpty) {
        mediaList = await Utils()
            .uploadImage(images: state.listImage, module: 'discount');
      }
      await DataManager.discountServices
          .create(
              id: id,
              workplace_id: workplace_id,
              type_id: type_id,
              time_lapse: timelapseFormatter.getUnformattedValue().toInt(),
              amount: amountFormatter.getUnformattedValue().toInt(),
              number_used: amountUseFormatter.getUnformattedValue().toInt(),
              min_order_value: priceFormatter.getUnformattedValue().toDouble(),
              max_order_value:
                  maxValueFormatter.getUnformattedValue().toDouble(),
              discount_value: state.discountType.key == 'discount.type.percent'
                  ? discountFormatter.getUnformattedValue().toDouble()
                  : discountprecentFormatter.getUnformattedValue().toDouble(),
              name: nameController.text,
              description: await controller.getText(),
              active: state.isActive,
              code: codeController.text,
              type_time_key: state.discountTime.key,
              scope_object_key: state.discountScope.key,
              discount_type_key: state.discountType.key,
              from_date: state.fromDate,
              to_date: state.toDate,
              open_date: state.openDate,
              image: avatar,
              media_list: mediaList,
              service_list: state.listService,
              service_group_list: state.listServiceGroup,
              service_delete_list: state.listServiceDelete,
              service_group_delete_list: state.listServiceGroupDelete,
              media_delete_list: state.media_delete_list)
          .then((value) {
        if (value) {
          Get.back();
        }
      });
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
      if (id > 0) {
        await DataManager.discountServices
            .view(id: id, workplace_id: workplace_id)
            .then((value) => emit(state.copyWith(promotion: value)));
        nameController.text = state.promotion.name;
        codeController.text = state.promotion.code;
        controller.setText(state.promotion.description);
        minValueController.text =
            state.promotion.min_order_value.toStringAsFixed(0);
        discoutController.text =
            state.promotion.discount_value.toStringAsFixed(0);
        maxValueController.text =
            state.promotion.max_order_value.toStringAsFixed(0);
        amountController.text = state.promotion.amount.toString();
        amountUseController.text = state.promotion.number_used.toString();
        timelapseController.text = state.promotion.time_lapse.toString();
        emit(state.copyWith(
          listService: state.promotion.service_list,
          listServiceGroup: state.promotion.service_group_list,
          fromDate: state.promotion.from_date ?? DateTime.now(),
          toDate: state.promotion.to_date ?? DateTime.now(),
          openDate: state.promotion.open_date ?? DateTime.now(),
          isActive: state.promotion.active,
          discountScope: state.listDiscountScope.firstWhere(
            (element) => element.key == state.promotion.scope_object_key,
            orElse: () => state.discountScope,
          ),
          discountTime: state.listDiscountTime.firstWhere(
            (element) => element.key == state.promotion.type_time_key,
            orElse: () => state.discountTime,
          ),
          discountType: state.listDiscountType.firstWhere(
            (element) => element.key == state.promotion.discount_type_key,
            orElse: () => state.discountType,
          ),
        ));
      }
    } catch (e) {
      log(e.toString());
      EasyLoading.dismiss();
    } finally {
      EasyLoading.dismiss();
    }
  }

  Future<String> onImagePickCallback(File file) async {
    final appDocDir = await getApplicationDocumentsDirectory();
    final copiedFile =
        await file.copy('${appDocDir.path}/${basename(file.path)}');
    EasyLoading.show();
    final url = await Utils().uploadImage(
        images: [copiedFile],
        module: 'html').whenComplete(() => EasyLoading.dismiss());
    return '${url[0].server_files}${url[0].filepath}';
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
