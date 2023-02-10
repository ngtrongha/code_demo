// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ServiceGroup _$$_ServiceGroupFromJson(Map<String, dynamic> json) =>
    _$_ServiceGroup(
      id: json['id'] as int? ?? -1,
      workplace_id: json['workplace_id'] as int? ?? -1,
      name: json['name'] as String? ?? '',
      active: json['active'] as bool? ?? false,
      isEdit: json['isEdit'] as bool? ?? false,
    );

Map<String, dynamic> _$$_ServiceGroupToJson(_$_ServiceGroup instance) =>
    <String, dynamic>{
      'id': instance.id,
      'workplace_id': instance.workplace_id,
      'name': instance.name,
      'active': instance.active,
      'isEdit': instance.isEdit,
    };
