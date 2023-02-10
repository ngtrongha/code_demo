// To parse this JSON data, do
//
//     final promotionModel = promotionModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'promotion_model.freezed.dart';
part 'promotion_model.g.dart';

@freezed
class PromotionModel with _$PromotionModel {
  const factory PromotionModel({
    @Default(-1) final int id,
    @Default(-1) final int workplace_id,
    @Default(-1) final int type_id,
    @Default('') final String type_time_key,
    @Default('') final String code,
    @Default(0) int time_lapse,
    @Default('') final String server_files,
    @Default('') final String filepath,
    @Default('') final String filename,
    @Default('') final String image,
    DateTime? from_date,
    DateTime? to_date,
    DateTime? open_date,
    @Default('') final String scope_object_key,
    @Default('') final String discount_type_key,
    @Default(0) final double discount_value,
    @Default(0) final int amount,
    @Default(0) final int number_used,
    @Default(0) final int total_all,
    @Default(0) final int total_using,
    @Default(0) final int total_add,
    @Default(0) final int total_expired,
    @Default(0) final double min_order_value,
    @Default(0) final double max_order_value,
    @Default('') final String name,
    @Default('') final String description,
    @Default(false) final bool active,
    @Default('') final String approved_key,
    @Default('') final String approved_text,
    @Default([]) final List<ServicePromotion> service_list,
    @Default([]) final List<ServicePromotion> service_group_list,
    @Default([]) final List<MediaList> media_list,
  }) = _PromotionModel;

  factory PromotionModel.fromJson(Map<String, dynamic> json) =>
      _$PromotionModelFromJson(json);
}

@freezed
class ServicePromotion with _$ServicePromotion {
  const factory ServicePromotion({
    @Default(-1) final int id,
    @Default(-1) final int discount_id,
    @Default(-1) final int service_id,
    @Default(-1) final int service_group_id,
    @Default('') final String name,
    @Default('') final String image,
    @Default(0) final double price,
  }) = _ServicePromotion;

  factory ServicePromotion.fromJson(Map<String, dynamic> json) =>
      _$ServicePromotionFromJson(json);
}

@freezed
class MediaList with _$MediaList {
  const factory MediaList({
    @Default(-1) final int id,
    @Default(-1) final int service_id,
    @Default('') final String image,
    @Default('') final String server_files,
    @Default('') final String filename,
    @Default('') final String filepath,
    @Default('') final String media_type,
    @Default('') final String link_video,
    @Default(false) final bool delete,
  }) = _MediaList;

  factory MediaList.fromJson(Map<String, dynamic> json) =>
      _$MediaListFromJson(json);
}
