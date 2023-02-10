// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promotion_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PromotionList _$$_PromotionListFromJson(Map<String, dynamic> json) =>
    _$_PromotionList(
      discount_list: (json['discount_list'] as List<dynamic>?)
              ?.map((e) => DiscountList.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      total_count: json['total_count'] as int? ?? 0,
    );

Map<String, dynamic> _$$_PromotionListToJson(_$_PromotionList instance) =>
    <String, dynamic>{
      'discount_list': instance.discount_list,
      'total_count': instance.total_count,
    };

_$_DiscountList _$$_DiscountListFromJson(Map<String, dynamic> json) =>
    _$_DiscountList(
      id: json['id'] as int? ?? -1,
      image: json['image'] as String? ?? '',
      name: json['name'] as String? ?? '',
      max_order_value: (json['max_order_value'] as num?)?.toDouble() ?? 0,
      discount_value: (json['discount_value'] as num?)?.toDouble() ?? 0,
      discount_type_key: json['discount_type_key'] as String? ?? '',
      scope_object_key: json['scope_object_key'] as String? ?? '',
      amount: json['amount'] as int? ?? 0,
      amount_used: json['amount_used'] as int? ?? 0,
      description: json['description'] as String? ?? '',
      from_date: json['from_date'] == null
          ? null
          : DateTime.parse(json['from_date'] as String),
      to_date: json['to_date'] == null
          ? null
          : DateTime.parse(json['to_date'] as String),
      active: json['active'] as bool? ?? false,
      type_id: json['type_id'] as int? ?? -1,
      type_color: json['type_color'] as String? ?? '#FFFFFF',
      type_code: json['type_code'] as String? ?? '',
      type_name: json['type_name'] as String? ?? '',
      timeout: json['timeout'] as bool? ?? false,
      approved_key: json['approved_key'] as String? ?? '',
    );

Map<String, dynamic> _$$_DiscountListToJson(_$_DiscountList instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'name': instance.name,
      'max_order_value': instance.max_order_value,
      'discount_value': instance.discount_value,
      'discount_type_key': instance.discount_type_key,
      'scope_object_key': instance.scope_object_key,
      'amount': instance.amount,
      'amount_used': instance.amount_used,
      'description': instance.description,
      'from_date': instance.from_date?.toIso8601String(),
      'to_date': instance.to_date?.toIso8601String(),
      'active': instance.active,
      'type_id': instance.type_id,
      'type_color': instance.type_color,
      'type_code': instance.type_code,
      'type_name': instance.type_name,
      'timeout': instance.timeout,
      'approved_key': instance.approved_key,
    };
