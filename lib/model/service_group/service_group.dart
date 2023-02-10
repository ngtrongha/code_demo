// To parse this JSON data, do
//
//     final serviceGroup = serviceGroupFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'service_group.freezed.dart';
part 'service_group.g.dart';

@freezed
class ServiceGroup with _$ServiceGroup {
  const factory ServiceGroup({
    @Default(-1) final int id,
    @Default(-1) final int workplace_id,
    @Default('') final String name,
    @Default(false) final bool active,
    @Default(false) final bool isEdit,
  }) = _ServiceGroup;

  factory ServiceGroup.fromJson(Map<String, dynamic> json) =>
      _$ServiceGroupFromJson(json);
}
