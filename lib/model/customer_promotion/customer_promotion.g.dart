// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_promotion.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CustomerPromotion _$$_CustomerPromotionFromJson(Map<String, dynamic> json) =>
    _$_CustomerPromotion(
      customer_voucher_list: (json['customer_voucher_list'] as List<dynamic>?)
              ?.map((e) =>
                  CustomerVoucherList.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      total_count: json['total_count'] as int? ?? 0,
    );

Map<String, dynamic> _$$_CustomerPromotionToJson(
        _$_CustomerPromotion instance) =>
    <String, dynamic>{
      'customer_voucher_list': instance.customer_voucher_list,
      'total_count': instance.total_count,
    };

_$_CustomerVoucherList _$$_CustomerVoucherListFromJson(
        Map<String, dynamic> json) =>
    _$_CustomerVoucherList(
      id: json['id'] as int? ?? -1,
      booking_id: json['booking_id'] as int? ?? -1,
      avatar: json['avatar'] as String? ?? '',
      name: json['name'] as String? ?? '',
      phone: json['phone'] as String? ?? '',
      total_discount: (json['total_discount'] as num?)?.toDouble() ?? 0,
      email: json['email'] as String? ?? '',
      status: json['status'] as String? ?? '',
      status_text: json['status_text'] as String? ?? '',
      status_color: json['status_color'] as String? ?? '#FFFFFF',
      create_date: json['create_date'] == null
          ? null
          : DateTime.parse(json['create_date'] as String),
      used_date: json['used_date'] == null
          ? null
          : DateTime.parse(json['used_date'] as String),
      status_date: json['status_date'] == null
          ? null
          : DateTime.parse(json['status_date'] as String),
    );

Map<String, dynamic> _$$_CustomerVoucherListToJson(
        _$_CustomerVoucherList instance) =>
    <String, dynamic>{
      'id': instance.id,
      'booking_id': instance.booking_id,
      'avatar': instance.avatar,
      'name': instance.name,
      'phone': instance.phone,
      'total_discount': instance.total_discount,
      'email': instance.email,
      'status': instance.status,
      'status_text': instance.status_text,
      'status_color': instance.status_color,
      'create_date': instance.create_date?.toIso8601String(),
      'used_date': instance.used_date?.toIso8601String(),
      'status_date': instance.status_date?.toIso8601String(),
    };
