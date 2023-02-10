// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'promotion_service_groups_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PromotionServiceGroupsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) startedGroup,
    required TResult Function(ServiceGroup value) addGroup,
    required TResult Function(List<ServicePromotion> listService,
            List<ServicePromotion> listServiceDelete)
        getOldGroup,
    required TResult Function(ServicePromotion value) deleteGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? startedGroup,
    TResult? Function(ServiceGroup value)? addGroup,
    TResult? Function(List<ServicePromotion> listService,
            List<ServicePromotion> listServiceDelete)?
        getOldGroup,
    TResult? Function(ServicePromotion value)? deleteGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? startedGroup,
    TResult Function(ServiceGroup value)? addGroup,
    TResult Function(List<ServicePromotion> listService,
            List<ServicePromotion> listServiceDelete)?
        getOldGroup,
    TResult Function(ServicePromotion value)? deleteGroup,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartedGroup value) startedGroup,
    required TResult Function(AddGroup value) addGroup,
    required TResult Function(GetOldGroup value) getOldGroup,
    required TResult Function(DeleteGroup value) deleteGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartedGroup value)? startedGroup,
    TResult? Function(AddGroup value)? addGroup,
    TResult? Function(GetOldGroup value)? getOldGroup,
    TResult? Function(DeleteGroup value)? deleteGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartedGroup value)? startedGroup,
    TResult Function(AddGroup value)? addGroup,
    TResult Function(GetOldGroup value)? getOldGroup,
    TResult Function(DeleteGroup value)? deleteGroup,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromotionServiceGroupsEventCopyWith<$Res> {
  factory $PromotionServiceGroupsEventCopyWith(
          PromotionServiceGroupsEvent value,
          $Res Function(PromotionServiceGroupsEvent) then) =
      _$PromotionServiceGroupsEventCopyWithImpl<$Res,
          PromotionServiceGroupsEvent>;
}

/// @nodoc
class _$PromotionServiceGroupsEventCopyWithImpl<$Res,
        $Val extends PromotionServiceGroupsEvent>
    implements $PromotionServiceGroupsEventCopyWith<$Res> {
  _$PromotionServiceGroupsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedGroupCopyWith<$Res> {
  factory _$$StartedGroupCopyWith(
          _$StartedGroup value, $Res Function(_$StartedGroup) then) =
      __$$StartedGroupCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$StartedGroupCopyWithImpl<$Res>
    extends _$PromotionServiceGroupsEventCopyWithImpl<$Res, _$StartedGroup>
    implements _$$StartedGroupCopyWith<$Res> {
  __$$StartedGroupCopyWithImpl(
      _$StartedGroup _value, $Res Function(_$StartedGroup) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$StartedGroup(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$StartedGroup implements StartedGroup {
  const _$StartedGroup(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'PromotionServiceGroupsEvent.startedGroup(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartedGroup &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedGroupCopyWith<_$StartedGroup> get copyWith =>
      __$$StartedGroupCopyWithImpl<_$StartedGroup>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) startedGroup,
    required TResult Function(ServiceGroup value) addGroup,
    required TResult Function(List<ServicePromotion> listService,
            List<ServicePromotion> listServiceDelete)
        getOldGroup,
    required TResult Function(ServicePromotion value) deleteGroup,
  }) {
    return startedGroup(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? startedGroup,
    TResult? Function(ServiceGroup value)? addGroup,
    TResult? Function(List<ServicePromotion> listService,
            List<ServicePromotion> listServiceDelete)?
        getOldGroup,
    TResult? Function(ServicePromotion value)? deleteGroup,
  }) {
    return startedGroup?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? startedGroup,
    TResult Function(ServiceGroup value)? addGroup,
    TResult Function(List<ServicePromotion> listService,
            List<ServicePromotion> listServiceDelete)?
        getOldGroup,
    TResult Function(ServicePromotion value)? deleteGroup,
    required TResult orElse(),
  }) {
    if (startedGroup != null) {
      return startedGroup(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartedGroup value) startedGroup,
    required TResult Function(AddGroup value) addGroup,
    required TResult Function(GetOldGroup value) getOldGroup,
    required TResult Function(DeleteGroup value) deleteGroup,
  }) {
    return startedGroup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartedGroup value)? startedGroup,
    TResult? Function(AddGroup value)? addGroup,
    TResult? Function(GetOldGroup value)? getOldGroup,
    TResult? Function(DeleteGroup value)? deleteGroup,
  }) {
    return startedGroup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartedGroup value)? startedGroup,
    TResult Function(AddGroup value)? addGroup,
    TResult Function(GetOldGroup value)? getOldGroup,
    TResult Function(DeleteGroup value)? deleteGroup,
    required TResult orElse(),
  }) {
    if (startedGroup != null) {
      return startedGroup(this);
    }
    return orElse();
  }
}

abstract class StartedGroup implements PromotionServiceGroupsEvent {
  const factory StartedGroup(final int id) = _$StartedGroup;

  int get id;
  @JsonKey(ignore: true)
  _$$StartedGroupCopyWith<_$StartedGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddGroupCopyWith<$Res> {
  factory _$$AddGroupCopyWith(
          _$AddGroup value, $Res Function(_$AddGroup) then) =
      __$$AddGroupCopyWithImpl<$Res>;
  @useResult
  $Res call({ServiceGroup value});

  $ServiceGroupCopyWith<$Res> get value;
}

/// @nodoc
class __$$AddGroupCopyWithImpl<$Res>
    extends _$PromotionServiceGroupsEventCopyWithImpl<$Res, _$AddGroup>
    implements _$$AddGroupCopyWith<$Res> {
  __$$AddGroupCopyWithImpl(_$AddGroup _value, $Res Function(_$AddGroup) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$AddGroup(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as ServiceGroup,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ServiceGroupCopyWith<$Res> get value {
    return $ServiceGroupCopyWith<$Res>(_value.value, (value) {
      return _then(_value.copyWith(value: value));
    });
  }
}

/// @nodoc

class _$AddGroup implements AddGroup {
  const _$AddGroup(this.value);

  @override
  final ServiceGroup value;

  @override
  String toString() {
    return 'PromotionServiceGroupsEvent.addGroup(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddGroup &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddGroupCopyWith<_$AddGroup> get copyWith =>
      __$$AddGroupCopyWithImpl<_$AddGroup>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) startedGroup,
    required TResult Function(ServiceGroup value) addGroup,
    required TResult Function(List<ServicePromotion> listService,
            List<ServicePromotion> listServiceDelete)
        getOldGroup,
    required TResult Function(ServicePromotion value) deleteGroup,
  }) {
    return addGroup(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? startedGroup,
    TResult? Function(ServiceGroup value)? addGroup,
    TResult? Function(List<ServicePromotion> listService,
            List<ServicePromotion> listServiceDelete)?
        getOldGroup,
    TResult? Function(ServicePromotion value)? deleteGroup,
  }) {
    return addGroup?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? startedGroup,
    TResult Function(ServiceGroup value)? addGroup,
    TResult Function(List<ServicePromotion> listService,
            List<ServicePromotion> listServiceDelete)?
        getOldGroup,
    TResult Function(ServicePromotion value)? deleteGroup,
    required TResult orElse(),
  }) {
    if (addGroup != null) {
      return addGroup(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartedGroup value) startedGroup,
    required TResult Function(AddGroup value) addGroup,
    required TResult Function(GetOldGroup value) getOldGroup,
    required TResult Function(DeleteGroup value) deleteGroup,
  }) {
    return addGroup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartedGroup value)? startedGroup,
    TResult? Function(AddGroup value)? addGroup,
    TResult? Function(GetOldGroup value)? getOldGroup,
    TResult? Function(DeleteGroup value)? deleteGroup,
  }) {
    return addGroup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartedGroup value)? startedGroup,
    TResult Function(AddGroup value)? addGroup,
    TResult Function(GetOldGroup value)? getOldGroup,
    TResult Function(DeleteGroup value)? deleteGroup,
    required TResult orElse(),
  }) {
    if (addGroup != null) {
      return addGroup(this);
    }
    return orElse();
  }
}

abstract class AddGroup implements PromotionServiceGroupsEvent {
  const factory AddGroup(final ServiceGroup value) = _$AddGroup;

  ServiceGroup get value;
  @JsonKey(ignore: true)
  _$$AddGroupCopyWith<_$AddGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetOldGroupCopyWith<$Res> {
  factory _$$GetOldGroupCopyWith(
          _$GetOldGroup value, $Res Function(_$GetOldGroup) then) =
      __$$GetOldGroupCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<ServicePromotion> listService,
      List<ServicePromotion> listServiceDelete});
}

/// @nodoc
class __$$GetOldGroupCopyWithImpl<$Res>
    extends _$PromotionServiceGroupsEventCopyWithImpl<$Res, _$GetOldGroup>
    implements _$$GetOldGroupCopyWith<$Res> {
  __$$GetOldGroupCopyWithImpl(
      _$GetOldGroup _value, $Res Function(_$GetOldGroup) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listService = null,
    Object? listServiceDelete = null,
  }) {
    return _then(_$GetOldGroup(
      listService: null == listService
          ? _value._listService
          : listService // ignore: cast_nullable_to_non_nullable
              as List<ServicePromotion>,
      listServiceDelete: null == listServiceDelete
          ? _value._listServiceDelete
          : listServiceDelete // ignore: cast_nullable_to_non_nullable
              as List<ServicePromotion>,
    ));
  }
}

/// @nodoc

class _$GetOldGroup implements GetOldGroup {
  const _$GetOldGroup(
      {final List<ServicePromotion> listService = const [],
      final List<ServicePromotion> listServiceDelete = const []})
      : _listService = listService,
        _listServiceDelete = listServiceDelete;

  final List<ServicePromotion> _listService;
  @override
  @JsonKey()
  List<ServicePromotion> get listService {
    if (_listService is EqualUnmodifiableListView) return _listService;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listService);
  }

  final List<ServicePromotion> _listServiceDelete;
  @override
  @JsonKey()
  List<ServicePromotion> get listServiceDelete {
    if (_listServiceDelete is EqualUnmodifiableListView)
      return _listServiceDelete;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listServiceDelete);
  }

  @override
  String toString() {
    return 'PromotionServiceGroupsEvent.getOldGroup(listService: $listService, listServiceDelete: $listServiceDelete)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetOldGroup &&
            const DeepCollectionEquality()
                .equals(other._listService, _listService) &&
            const DeepCollectionEquality()
                .equals(other._listServiceDelete, _listServiceDelete));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_listService),
      const DeepCollectionEquality().hash(_listServiceDelete));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetOldGroupCopyWith<_$GetOldGroup> get copyWith =>
      __$$GetOldGroupCopyWithImpl<_$GetOldGroup>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) startedGroup,
    required TResult Function(ServiceGroup value) addGroup,
    required TResult Function(List<ServicePromotion> listService,
            List<ServicePromotion> listServiceDelete)
        getOldGroup,
    required TResult Function(ServicePromotion value) deleteGroup,
  }) {
    return getOldGroup(listService, listServiceDelete);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? startedGroup,
    TResult? Function(ServiceGroup value)? addGroup,
    TResult? Function(List<ServicePromotion> listService,
            List<ServicePromotion> listServiceDelete)?
        getOldGroup,
    TResult? Function(ServicePromotion value)? deleteGroup,
  }) {
    return getOldGroup?.call(listService, listServiceDelete);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? startedGroup,
    TResult Function(ServiceGroup value)? addGroup,
    TResult Function(List<ServicePromotion> listService,
            List<ServicePromotion> listServiceDelete)?
        getOldGroup,
    TResult Function(ServicePromotion value)? deleteGroup,
    required TResult orElse(),
  }) {
    if (getOldGroup != null) {
      return getOldGroup(listService, listServiceDelete);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartedGroup value) startedGroup,
    required TResult Function(AddGroup value) addGroup,
    required TResult Function(GetOldGroup value) getOldGroup,
    required TResult Function(DeleteGroup value) deleteGroup,
  }) {
    return getOldGroup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartedGroup value)? startedGroup,
    TResult? Function(AddGroup value)? addGroup,
    TResult? Function(GetOldGroup value)? getOldGroup,
    TResult? Function(DeleteGroup value)? deleteGroup,
  }) {
    return getOldGroup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartedGroup value)? startedGroup,
    TResult Function(AddGroup value)? addGroup,
    TResult Function(GetOldGroup value)? getOldGroup,
    TResult Function(DeleteGroup value)? deleteGroup,
    required TResult orElse(),
  }) {
    if (getOldGroup != null) {
      return getOldGroup(this);
    }
    return orElse();
  }
}

abstract class GetOldGroup implements PromotionServiceGroupsEvent {
  const factory GetOldGroup(
      {final List<ServicePromotion> listService,
      final List<ServicePromotion> listServiceDelete}) = _$GetOldGroup;

  List<ServicePromotion> get listService;
  List<ServicePromotion> get listServiceDelete;
  @JsonKey(ignore: true)
  _$$GetOldGroupCopyWith<_$GetOldGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteGroupCopyWith<$Res> {
  factory _$$DeleteGroupCopyWith(
          _$DeleteGroup value, $Res Function(_$DeleteGroup) then) =
      __$$DeleteGroupCopyWithImpl<$Res>;
  @useResult
  $Res call({ServicePromotion value});

  $ServicePromotionCopyWith<$Res> get value;
}

/// @nodoc
class __$$DeleteGroupCopyWithImpl<$Res>
    extends _$PromotionServiceGroupsEventCopyWithImpl<$Res, _$DeleteGroup>
    implements _$$DeleteGroupCopyWith<$Res> {
  __$$DeleteGroupCopyWithImpl(
      _$DeleteGroup _value, $Res Function(_$DeleteGroup) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$DeleteGroup(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as ServicePromotion,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ServicePromotionCopyWith<$Res> get value {
    return $ServicePromotionCopyWith<$Res>(_value.value, (value) {
      return _then(_value.copyWith(value: value));
    });
  }
}

/// @nodoc

class _$DeleteGroup implements DeleteGroup {
  const _$DeleteGroup(this.value);

  @override
  final ServicePromotion value;

  @override
  String toString() {
    return 'PromotionServiceGroupsEvent.deleteGroup(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteGroup &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteGroupCopyWith<_$DeleteGroup> get copyWith =>
      __$$DeleteGroupCopyWithImpl<_$DeleteGroup>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) startedGroup,
    required TResult Function(ServiceGroup value) addGroup,
    required TResult Function(List<ServicePromotion> listService,
            List<ServicePromotion> listServiceDelete)
        getOldGroup,
    required TResult Function(ServicePromotion value) deleteGroup,
  }) {
    return deleteGroup(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? startedGroup,
    TResult? Function(ServiceGroup value)? addGroup,
    TResult? Function(List<ServicePromotion> listService,
            List<ServicePromotion> listServiceDelete)?
        getOldGroup,
    TResult? Function(ServicePromotion value)? deleteGroup,
  }) {
    return deleteGroup?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? startedGroup,
    TResult Function(ServiceGroup value)? addGroup,
    TResult Function(List<ServicePromotion> listService,
            List<ServicePromotion> listServiceDelete)?
        getOldGroup,
    TResult Function(ServicePromotion value)? deleteGroup,
    required TResult orElse(),
  }) {
    if (deleteGroup != null) {
      return deleteGroup(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartedGroup value) startedGroup,
    required TResult Function(AddGroup value) addGroup,
    required TResult Function(GetOldGroup value) getOldGroup,
    required TResult Function(DeleteGroup value) deleteGroup,
  }) {
    return deleteGroup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartedGroup value)? startedGroup,
    TResult? Function(AddGroup value)? addGroup,
    TResult? Function(GetOldGroup value)? getOldGroup,
    TResult? Function(DeleteGroup value)? deleteGroup,
  }) {
    return deleteGroup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartedGroup value)? startedGroup,
    TResult Function(AddGroup value)? addGroup,
    TResult Function(GetOldGroup value)? getOldGroup,
    TResult Function(DeleteGroup value)? deleteGroup,
    required TResult orElse(),
  }) {
    if (deleteGroup != null) {
      return deleteGroup(this);
    }
    return orElse();
  }
}

abstract class DeleteGroup implements PromotionServiceGroupsEvent {
  const factory DeleteGroup(final ServicePromotion value) = _$DeleteGroup;

  ServicePromotion get value;
  @JsonKey(ignore: true)
  _$$DeleteGroupCopyWith<_$DeleteGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PromotionServiceGroupsState {
  bool get isLoading => throw _privateConstructorUsedError;
  int get total_count => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  List<ServicePromotion> get listServiceGroupPromotion =>
      throw _privateConstructorUsedError;
  List<ServicePromotion> get listDeletePromotion =>
      throw _privateConstructorUsedError;
  List<ServiceGroup> get listGroup => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PromotionServiceGroupsStateCopyWith<PromotionServiceGroupsState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromotionServiceGroupsStateCopyWith<$Res> {
  factory $PromotionServiceGroupsStateCopyWith(
          PromotionServiceGroupsState value,
          $Res Function(PromotionServiceGroupsState) then) =
      _$PromotionServiceGroupsStateCopyWithImpl<$Res,
          PromotionServiceGroupsState>;
  @useResult
  $Res call(
      {bool isLoading,
      int total_count,
      int page,
      List<ServicePromotion> listServiceGroupPromotion,
      List<ServicePromotion> listDeletePromotion,
      List<ServiceGroup> listGroup});
}

/// @nodoc
class _$PromotionServiceGroupsStateCopyWithImpl<$Res,
        $Val extends PromotionServiceGroupsState>
    implements $PromotionServiceGroupsStateCopyWith<$Res> {
  _$PromotionServiceGroupsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? total_count = null,
    Object? page = null,
    Object? listServiceGroupPromotion = null,
    Object? listDeletePromotion = null,
    Object? listGroup = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      total_count: null == total_count
          ? _value.total_count
          : total_count // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      listServiceGroupPromotion: null == listServiceGroupPromotion
          ? _value.listServiceGroupPromotion
          : listServiceGroupPromotion // ignore: cast_nullable_to_non_nullable
              as List<ServicePromotion>,
      listDeletePromotion: null == listDeletePromotion
          ? _value.listDeletePromotion
          : listDeletePromotion // ignore: cast_nullable_to_non_nullable
              as List<ServicePromotion>,
      listGroup: null == listGroup
          ? _value.listGroup
          : listGroup // ignore: cast_nullable_to_non_nullable
              as List<ServiceGroup>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PromotionServiceGroupsStateCopyWith<$Res>
    implements $PromotionServiceGroupsStateCopyWith<$Res> {
  factory _$$_PromotionServiceGroupsStateCopyWith(
          _$_PromotionServiceGroupsState value,
          $Res Function(_$_PromotionServiceGroupsState) then) =
      __$$_PromotionServiceGroupsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      int total_count,
      int page,
      List<ServicePromotion> listServiceGroupPromotion,
      List<ServicePromotion> listDeletePromotion,
      List<ServiceGroup> listGroup});
}

/// @nodoc
class __$$_PromotionServiceGroupsStateCopyWithImpl<$Res>
    extends _$PromotionServiceGroupsStateCopyWithImpl<$Res,
        _$_PromotionServiceGroupsState>
    implements _$$_PromotionServiceGroupsStateCopyWith<$Res> {
  __$$_PromotionServiceGroupsStateCopyWithImpl(
      _$_PromotionServiceGroupsState _value,
      $Res Function(_$_PromotionServiceGroupsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? total_count = null,
    Object? page = null,
    Object? listServiceGroupPromotion = null,
    Object? listDeletePromotion = null,
    Object? listGroup = null,
  }) {
    return _then(_$_PromotionServiceGroupsState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      total_count: null == total_count
          ? _value.total_count
          : total_count // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      listServiceGroupPromotion: null == listServiceGroupPromotion
          ? _value._listServiceGroupPromotion
          : listServiceGroupPromotion // ignore: cast_nullable_to_non_nullable
              as List<ServicePromotion>,
      listDeletePromotion: null == listDeletePromotion
          ? _value._listDeletePromotion
          : listDeletePromotion // ignore: cast_nullable_to_non_nullable
              as List<ServicePromotion>,
      listGroup: null == listGroup
          ? _value._listGroup
          : listGroup // ignore: cast_nullable_to_non_nullable
              as List<ServiceGroup>,
    ));
  }
}

/// @nodoc

class _$_PromotionServiceGroupsState implements _PromotionServiceGroupsState {
  const _$_PromotionServiceGroupsState(
      {this.isLoading = false,
      this.total_count = 0,
      this.page = 1,
      final List<ServicePromotion> listServiceGroupPromotion = const [],
      final List<ServicePromotion> listDeletePromotion = const [],
      final List<ServiceGroup> listGroup = const []})
      : _listServiceGroupPromotion = listServiceGroupPromotion,
        _listDeletePromotion = listDeletePromotion,
        _listGroup = listGroup;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final int total_count;
  @override
  @JsonKey()
  final int page;
  final List<ServicePromotion> _listServiceGroupPromotion;
  @override
  @JsonKey()
  List<ServicePromotion> get listServiceGroupPromotion {
    if (_listServiceGroupPromotion is EqualUnmodifiableListView)
      return _listServiceGroupPromotion;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listServiceGroupPromotion);
  }

  final List<ServicePromotion> _listDeletePromotion;
  @override
  @JsonKey()
  List<ServicePromotion> get listDeletePromotion {
    if (_listDeletePromotion is EqualUnmodifiableListView)
      return _listDeletePromotion;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listDeletePromotion);
  }

  final List<ServiceGroup> _listGroup;
  @override
  @JsonKey()
  List<ServiceGroup> get listGroup {
    if (_listGroup is EqualUnmodifiableListView) return _listGroup;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listGroup);
  }

  @override
  String toString() {
    return 'PromotionServiceGroupsState(isLoading: $isLoading, total_count: $total_count, page: $page, listServiceGroupPromotion: $listServiceGroupPromotion, listDeletePromotion: $listDeletePromotion, listGroup: $listGroup)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PromotionServiceGroupsState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.total_count, total_count) ||
                other.total_count == total_count) &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(
                other._listServiceGroupPromotion, _listServiceGroupPromotion) &&
            const DeepCollectionEquality()
                .equals(other._listDeletePromotion, _listDeletePromotion) &&
            const DeepCollectionEquality()
                .equals(other._listGroup, _listGroup));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      total_count,
      page,
      const DeepCollectionEquality().hash(_listServiceGroupPromotion),
      const DeepCollectionEquality().hash(_listDeletePromotion),
      const DeepCollectionEquality().hash(_listGroup));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PromotionServiceGroupsStateCopyWith<_$_PromotionServiceGroupsState>
      get copyWith => __$$_PromotionServiceGroupsStateCopyWithImpl<
          _$_PromotionServiceGroupsState>(this, _$identity);
}

abstract class _PromotionServiceGroupsState
    implements PromotionServiceGroupsState {
  const factory _PromotionServiceGroupsState(
      {final bool isLoading,
      final int total_count,
      final int page,
      final List<ServicePromotion> listServiceGroupPromotion,
      final List<ServicePromotion> listDeletePromotion,
      final List<ServiceGroup> listGroup}) = _$_PromotionServiceGroupsState;

  @override
  bool get isLoading;
  @override
  int get total_count;
  @override
  int get page;
  @override
  List<ServicePromotion> get listServiceGroupPromotion;
  @override
  List<ServicePromotion> get listDeletePromotion;
  @override
  List<ServiceGroup> get listGroup;
  @override
  @JsonKey(ignore: true)
  _$$_PromotionServiceGroupsStateCopyWith<_$_PromotionServiceGroupsState>
      get copyWith => throw _privateConstructorUsedError;
}
