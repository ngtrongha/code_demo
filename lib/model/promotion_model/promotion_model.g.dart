// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promotion_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PromotionModel _$$_PromotionModelFromJson(Map<String, dynamic> json) =>
    _$_PromotionModel(
      id: json['id'] as int? ?? -1,
      workplace_id: json['workplace_id'] as int? ?? -1,
      type_id: json['type_id'] as int? ?? -1,
      type_time_key: json['type_time_key'] as String? ?? '',
      code: json['code'] as String? ?? '',
      time_lapse: json['time_lapse'] as int? ?? 0,
      server_files: json['server_files'] as String? ?? '',
      filepath: json['filepath'] as String? ?? '',
      filename: json['filename'] as String? ?? '',
      image: json['image'] as String? ?? '',
      from_date: json['from_date'] == null
          ? null
          : DateTime.parse(json['from_date'] as String),
      to_date: json['to_date'] == null
          ? null
          : DateTime.parse(json['to_date'] as String),
      open_date: json['open_date'] == null
          ? null
          : DateTime.parse(json['open_date'] as String),
      scope_object_key: json['scope_object_key'] as String? ?? '',
      discount_type_key: json['discount_type_key'] as String? ?? '',
      discount_value: (json['discount_value'] as num?)?.toDouble() ?? 0,
      amount: json['amount'] as int? ?? 0,
      number_used: json['number_used'] as int? ?? 0,
      total_all: json['total_all'] as int? ?? 0,
      total_using: json['total_using'] as int? ?? 0,
      total_add: json['total_add'] as int? ?? 0,
      total_expired: json['total_expired'] as int? ?? 0,
      min_order_value: (json['min_order_value'] as num?)?.toDouble() ?? 0,
      max_order_value: (json['max_order_value'] as num?)?.toDouble() ?? 0,
      name: json['name'] as String? ?? '',
      description: json['description'] as String? ?? '',
      active: json['active'] as bool? ?? false,
      approved_key: json['approved_key'] as String? ?? '',
      approved_text: json['approved_text'] as String? ?? '',
      service_list: (json['service_list'] as List<dynamic>?)
              ?.map((e) => ServicePromotion.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      service_group_list: (json['service_group_list'] as List<dynamic>?)
              ?.map((e) => ServicePromotion.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      media_list: (json['media_list'] as List<dynamic>?)
              ?.map((e) => MediaList.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_PromotionModelToJson(_$_PromotionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'workplace_id': instance.workplace_id,
      'type_id': instance.type_id,
      'type_time_key': instance.type_time_key,
      'code': instance.code,
      'time_lapse': instance.time_lapse,
      'server_files': instance.server_files,
      'filepath': instance.filepath,
      'filename': instance.filename,
      'image': instance.image,
      'from_date': instance.from_date?.toIso8601String(),
      'to_date': instance.to_date?.toIso8601String(),
      'open_date': instance.open_date?.toIso8601String(),
      'scope_object_key': instance.scope_object_key,
      'discount_type_key': instance.discount_type_key,
      'discount_value': instance.discount_value,
      'amount': instance.amount,
      'number_used': instance.number_used,
      'total_all': instance.total_all,
      'total_using': instance.total_using,
      'total_add': instance.total_add,
      'total_expired': instance.total_expired,
      'min_order_value': instance.min_order_value,
      'max_order_value': instance.max_order_value,
      'name': instance.name,
      'description': instance.description,
      'active': instance.active,
      'approved_key': instance.approved_key,
      'approved_text': instance.approved_text,
      'service_list': instance.service_list,
      'service_group_list': instance.service_group_list,
      'media_list': instance.media_list,
    };

_$_ServicePromotion _$$_ServicePromotionFromJson(Map<String, dynamic> json) =>
    _$_ServicePromotion(
      id: json['id'] as int? ?? -1,
      discount_id: json['discount_id'] as int? ?? -1,
      service_id: json['service_id'] as int? ?? -1,
      service_group_id: json['service_group_id'] as int? ?? -1,
      name: json['name'] as String? ?? '',
      image: json['image'] as String? ?? '',
      price: (json['price'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$_ServicePromotionToJson(_$_ServicePromotion instance) =>
    <String, dynamic>{
      'id': instance.id,
      'discount_id': instance.discount_id,
      'service_id': instance.service_id,
      'service_group_id': instance.service_group_id,
      'name': instance.name,
      'image': instance.image,
      'price': instance.price,
    };
