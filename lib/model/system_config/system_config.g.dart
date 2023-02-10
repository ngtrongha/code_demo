// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'system_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SystemConfig _$$_SystemConfigFromJson(Map<String, dynamic> json) =>
    _$_SystemConfig(
      id: json['id'] as int? ?? -1,
      key: json['key'] as String? ?? '',
      value: json['value'] as String? ?? '',
      value_bit: json['value_bit'] as bool? ?? false,
      value_int: json['value_int'] as int? ?? 0,
      value_float: (json['value_float'] as num?)?.toDouble() ?? 0,
      color: json['color'] as String? ?? '',
      control: json['control'] as String? ?? '',
      image: json['image'] as String? ?? imageDefault,
      name: json['name'] as String? ?? '',
      description: json['description'] as String? ?? '',
      parent_key: json['parent_key'] as String? ?? '',
    );

Map<String, dynamic> _$$_SystemConfigToJson(_$_SystemConfig instance) =>
    <String, dynamic>{
      'id': instance.id,
      'key': instance.key,
      'value': instance.value,
      'value_bit': instance.value_bit,
      'value_int': instance.value_int,
      'value_float': instance.value_float,
      'color': instance.color,
      'control': instance.control,
      'image': instance.image,
      'name': instance.name,
      'description': instance.description,
      'parent_key': instance.parent_key,
    };
