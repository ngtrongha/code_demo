// To parse this JSON data, do
//
//     final serviceModel = serviceModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'service_model.freezed.dart';
part 'service_model.g.dart';

@freezed
class ServiceModel with _$ServiceModel {
  const factory ServiceModel({
    @Default(-1) final int id,
    @Default(-1) final int market_id,
    @Default(-1) final int workplace_id,
    @Default(-1) final int group_id,
    @Default('') final String group_name,
    @Default('') final String image,
    @Default('') final String server_files,
    @Default('') final String filepath,
    @Default('') final String filename,
    @Default(0) final double price,
    @Default(0) final int time,
    @Default('') final String time_unit,
    @Default('') final String time_unit_text,
    @Default('') final String warranty_time,
    @Default('') final String warranty_time_unit,
    @Default('') final String warranty_time_unit_text,
    @Default('') final String warranty_type,
    @Default('') final String name,
    @Default('') final String description,
    @Default('') final String seo_title,
    @Default('') final String seo_meta_keyword,
    @Default('') final String seo_meta_description,
    @Default('') final String approved_text,
    @Default('') final String approved_key,
    @Default('#424242') final String color,
    @Default(false) final bool active,
    @Default([]) final List<AddonList> addon_list,
    @Default([]) final List<PriceList> price_list,
    @Default([]) final List<MediaList> media_list,
  }) = _ServiceModel;

  factory ServiceModel.fromJson(Map<String, dynamic> json) =>
      _$ServiceModelFromJson(json);
}

@freezed
class AddonList with _$AddonList {
  const factory AddonList({
    @Default(-1) final int id,
    @Default(-1) final int service_id,
    @Default(0) final double price,
    @Default('') final String name,
    @Default(false) final bool delete,
  }) = _AddonList;

  factory AddonList.fromJson(Map<String, dynamic> json) =>
      _$AddonListFromJson(json);
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

@freezed
class PriceList with _$PriceList {
  const factory PriceList({
    @Default(-1) final int id,
    @Default(-1) final int service_id,
    @Default(0) final double price,
    DateTime? from_date,
    DateTime? to_date,
    @Default('') final String name,
    @Default(false) final bool delete,
  }) = _PriceList;

  factory PriceList.fromJson(Map<String, dynamic> json) =>
      _$PriceListFromJson(json);
}
