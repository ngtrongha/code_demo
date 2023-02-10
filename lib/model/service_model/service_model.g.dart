// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ServiceModel _$$_ServiceModelFromJson(Map<String, dynamic> json) =>
    _$_ServiceModel(
      id: json['id'] as int? ?? -1,
      market_id: json['market_id'] as int? ?? -1,
      workplace_id: json['workplace_id'] as int? ?? -1,
      group_id: json['group_id'] as int? ?? -1,
      group_name: json['group_name'] as String? ?? '',
      image: json['image'] as String? ?? '',
      server_files: json['server_files'] as String? ?? '',
      filepath: json['filepath'] as String? ?? '',
      filename: json['filename'] as String? ?? '',
      price: (json['price'] as num?)?.toDouble() ?? 0,
      time: json['time'] as int? ?? 0,
      time_unit: json['time_unit'] as String? ?? '',
      time_unit_text: json['time_unit_text'] as String? ?? '',
      warranty_time: json['warranty_time'] as String? ?? '',
      warranty_time_unit: json['warranty_time_unit'] as String? ?? '',
      warranty_time_unit_text: json['warranty_time_unit_text'] as String? ?? '',
      warranty_type: json['warranty_type'] as String? ?? '',
      name: json['name'] as String? ?? '',
      description: json['description'] as String? ?? '',
      seo_title: json['seo_title'] as String? ?? '',
      seo_meta_keyword: json['seo_meta_keyword'] as String? ?? '',
      seo_meta_description: json['seo_meta_description'] as String? ?? '',
      approved_text: json['approved_text'] as String? ?? '',
      approved_key: json['approved_key'] as String? ?? '',
      color: json['color'] as String? ?? '#424242',
      active: json['active'] as bool? ?? false,
      addon_list: (json['addon_list'] as List<dynamic>?)
              ?.map((e) => AddonList.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      price_list: (json['price_list'] as List<dynamic>?)
              ?.map((e) => PriceList.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      media_list: (json['media_list'] as List<dynamic>?)
              ?.map((e) => MediaList.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_ServiceModelToJson(_$_ServiceModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'market_id': instance.market_id,
      'workplace_id': instance.workplace_id,
      'group_id': instance.group_id,
      'group_name': instance.group_name,
      'image': instance.image,
      'server_files': instance.server_files,
      'filepath': instance.filepath,
      'filename': instance.filename,
      'price': instance.price,
      'time': instance.time,
      'time_unit': instance.time_unit,
      'time_unit_text': instance.time_unit_text,
      'warranty_time': instance.warranty_time,
      'warranty_time_unit': instance.warranty_time_unit,
      'warranty_time_unit_text': instance.warranty_time_unit_text,
      'warranty_type': instance.warranty_type,
      'name': instance.name,
      'description': instance.description,
      'seo_title': instance.seo_title,
      'seo_meta_keyword': instance.seo_meta_keyword,
      'seo_meta_description': instance.seo_meta_description,
      'approved_text': instance.approved_text,
      'approved_key': instance.approved_key,
      'color': instance.color,
      'active': instance.active,
      'addon_list': instance.addon_list,
      'price_list': instance.price_list,
      'media_list': instance.media_list,
    };

_$_AddonList _$$_AddonListFromJson(Map<String, dynamic> json) => _$_AddonList(
      id: json['id'] as int? ?? -1,
      service_id: json['service_id'] as int? ?? -1,
      price: (json['price'] as num?)?.toDouble() ?? 0,
      name: json['name'] as String? ?? '',
      delete: json['delete'] as bool? ?? false,
    );

Map<String, dynamic> _$$_AddonListToJson(_$_AddonList instance) =>
    <String, dynamic>{
      'id': instance.id,
      'service_id': instance.service_id,
      'price': instance.price,
      'name': instance.name,
      'delete': instance.delete,
    };

_$_MediaList _$$_MediaListFromJson(Map<String, dynamic> json) => _$_MediaList(
      id: json['id'] as int? ?? -1,
      service_id: json['service_id'] as int? ?? -1,
      image: json['image'] as String? ?? '',
      server_files: json['server_files'] as String? ?? '',
      filename: json['filename'] as String? ?? '',
      filepath: json['filepath'] as String? ?? '',
      media_type: json['media_type'] as String? ?? '',
      link_video: json['link_video'] as String? ?? '',
      delete: json['delete'] as bool? ?? false,
    );

Map<String, dynamic> _$$_MediaListToJson(_$_MediaList instance) =>
    <String, dynamic>{
      'id': instance.id,
      'service_id': instance.service_id,
      'image': instance.image,
      'server_files': instance.server_files,
      'filename': instance.filename,
      'filepath': instance.filepath,
      'media_type': instance.media_type,
      'link_video': instance.link_video,
      'delete': instance.delete,
    };

_$_PriceList _$$_PriceListFromJson(Map<String, dynamic> json) => _$_PriceList(
      id: json['id'] as int? ?? -1,
      service_id: json['service_id'] as int? ?? -1,
      price: (json['price'] as num?)?.toDouble() ?? 0,
      from_date: json['from_date'] == null
          ? null
          : DateTime.parse(json['from_date'] as String),
      to_date: json['to_date'] == null
          ? null
          : DateTime.parse(json['to_date'] as String),
      name: json['name'] as String? ?? '',
      delete: json['delete'] as bool? ?? false,
    );

Map<String, dynamic> _$$_PriceListToJson(_$_PriceList instance) =>
    <String, dynamic>{
      'id': instance.id,
      'service_id': instance.service_id,
      'price': instance.price,
      'from_date': instance.from_date?.toIso8601String(),
      'to_date': instance.to_date?.toIso8601String(),
      'name': instance.name,
      'delete': instance.delete,
    };
