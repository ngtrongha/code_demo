// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ServiceGroup _$ServiceGroupFromJson(Map<String, dynamic> json) {
  return _ServiceGroup.fromJson(json);
}

/// @nodoc
mixin _$ServiceGroup {
  int get id => throw _privateConstructorUsedError;
  int get workplace_id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool get active => throw _privateConstructorUsedError;
  bool get isEdit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServiceGroupCopyWith<ServiceGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceGroupCopyWith<$Res> {
  factory $ServiceGroupCopyWith(
          ServiceGroup value, $Res Function(ServiceGroup) then) =
      _$ServiceGroupCopyWithImpl<$Res, ServiceGroup>;
  @useResult
  $Res call({int id, int workplace_id, String name, bool active, bool isEdit});
}

/// @nodoc
class _$ServiceGroupCopyWithImpl<$Res, $Val extends ServiceGroup>
    implements $ServiceGroupCopyWith<$Res> {
  _$ServiceGroupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? workplace_id = null,
    Object? name = null,
    Object? active = null,
    Object? isEdit = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      workplace_id: null == workplace_id
          ? _value.workplace_id
          : workplace_id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      isEdit: null == isEdit
          ? _value.isEdit
          : isEdit // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ServiceGroupCopyWith<$Res>
    implements $ServiceGroupCopyWith<$Res> {
  factory _$$_ServiceGroupCopyWith(
          _$_ServiceGroup value, $Res Function(_$_ServiceGroup) then) =
      __$$_ServiceGroupCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int workplace_id, String name, bool active, bool isEdit});
}

/// @nodoc
class __$$_ServiceGroupCopyWithImpl<$Res>
    extends _$ServiceGroupCopyWithImpl<$Res, _$_ServiceGroup>
    implements _$$_ServiceGroupCopyWith<$Res> {
  __$$_ServiceGroupCopyWithImpl(
      _$_ServiceGroup _value, $Res Function(_$_ServiceGroup) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? workplace_id = null,
    Object? name = null,
    Object? active = null,
    Object? isEdit = null,
  }) {
    return _then(_$_ServiceGroup(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      workplace_id: null == workplace_id
          ? _value.workplace_id
          : workplace_id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      isEdit: null == isEdit
          ? _value.isEdit
          : isEdit // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ServiceGroup implements _ServiceGroup {
  const _$_ServiceGroup(
      {this.id = -1,
      this.workplace_id = -1,
      this.name = '',
      this.active = false,
      this.isEdit = false});

  factory _$_ServiceGroup.fromJson(Map<String, dynamic> json) =>
      _$$_ServiceGroupFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final int workplace_id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final bool active;
  @override
  @JsonKey()
  final bool isEdit;

  @override
  String toString() {
    return 'ServiceGroup(id: $id, workplace_id: $workplace_id, name: $name, active: $active, isEdit: $isEdit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServiceGroup &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.workplace_id, workplace_id) ||
                other.workplace_id == workplace_id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.isEdit, isEdit) || other.isEdit == isEdit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, workplace_id, name, active, isEdit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ServiceGroupCopyWith<_$_ServiceGroup> get copyWith =>
      __$$_ServiceGroupCopyWithImpl<_$_ServiceGroup>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ServiceGroupToJson(
      this,
    );
  }
}

abstract class _ServiceGroup implements ServiceGroup {
  const factory _ServiceGroup(
      {final int id,
      final int workplace_id,
      final String name,
      final bool active,
      final bool isEdit}) = _$_ServiceGroup;

  factory _ServiceGroup.fromJson(Map<String, dynamic> json) =
      _$_ServiceGroup.fromJson;

  @override
  int get id;
  @override
  int get workplace_id;
  @override
  String get name;
  @override
  bool get active;
  @override
  bool get isEdit;
  @override
  @JsonKey(ignore: true)
  _$$_ServiceGroupCopyWith<_$_ServiceGroup> get copyWith =>
      throw _privateConstructorUsedError;
}
