// To parse this JSON data, do
//
//     final systemConfig = systemConfigFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'system_config.freezed.dart';
part 'system_config.g.dart';

@freezed
class SystemConfig with _$SystemConfig {
  const factory SystemConfig({
    @Default(-1) final int id,
    @Default('') final String key,
    @Default('') final String value,
    @Default(false) final bool value_bit,
    @Default(0) final int value_int,
    @Default(0) final double value_float,
    @Default('') final String color,
    @Default('') final String control,
    @Default('') final String image,
    @Default('') final String name,
    @Default('') final String description,
    @Default('') final String parent_key,
  }) = _SystemConfig;

  factory SystemConfig.fromJson(Map<String, dynamic> json) =>
      _$SystemConfigFromJson(json);
}
