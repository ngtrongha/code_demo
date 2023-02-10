// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'promotion_services_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PromotionServicesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) startedService,
    required TResult Function() onRefresh,
    required TResult Function() onLoad,
    required TResult Function(List<ServicePromotion> listService,
            List<ServicePromotion> listServiceDelete)
        getOldService,
    required TResult Function(ServiceModel value) addService,
    required TResult Function(ServicePromotion value) deleteService,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? startedService,
    TResult? Function()? onRefresh,
    TResult? Function()? onLoad,
    TResult? Function(List<ServicePromotion> listService,
            List<ServicePromotion> listServiceDelete)?
        getOldService,
    TResult? Function(ServiceModel value)? addService,
    TResult? Function(ServicePromotion value)? deleteService,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? startedService,
    TResult Function()? onRefresh,
    TResult Function()? onLoad,
    TResult Function(List<ServicePromotion> listService,
            List<ServicePromotion> listServiceDelete)?
        getOldService,
    TResult Function(ServiceModel value)? addService,
    TResult Function(ServicePromotion value)? deleteService,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartedService value) startedService,
    required TResult Function(OnRefresh value) onRefresh,
    required TResult Function(OnLoad value) onLoad,
    required TResult Function(GetOldService value) getOldService,
    required TResult Function(AddService value) addService,
    required TResult Function(DeleteService value) deleteService,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartedService value)? startedService,
    TResult? Function(OnRefresh value)? onRefresh,
    TResult? Function(OnLoad value)? onLoad,
    TResult? Function(GetOldService value)? getOldService,
    TResult? Function(AddService value)? addService,
    TResult? Function(DeleteService value)? deleteService,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartedService value)? startedService,
    TResult Function(OnRefresh value)? onRefresh,
    TResult Function(OnLoad value)? onLoad,
    TResult Function(GetOldService value)? getOldService,
    TResult Function(AddService value)? addService,
    TResult Function(DeleteService value)? deleteService,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromotionServicesEventCopyWith<$Res> {
  factory $PromotionServicesEventCopyWith(PromotionServicesEvent value,
          $Res Function(PromotionServicesEvent) then) =
      _$PromotionServicesEventCopyWithImpl<$Res, PromotionServicesEvent>;
}

/// @nodoc
class _$PromotionServicesEventCopyWithImpl<$Res,
        $Val extends PromotionServicesEvent>
    implements $PromotionServicesEventCopyWith<$Res> {
  _$PromotionServicesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedServiceCopyWith<$Res> {
  factory _$$StartedServiceCopyWith(
          _$StartedService value, $Res Function(_$StartedService) then) =
      __$$StartedServiceCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$StartedServiceCopyWithImpl<$Res>
    extends _$PromotionServicesEventCopyWithImpl<$Res, _$StartedService>
    implements _$$StartedServiceCopyWith<$Res> {
  __$$StartedServiceCopyWithImpl(
      _$StartedService _value, $Res Function(_$StartedService) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$StartedService(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$StartedService implements StartedService {
  const _$StartedService(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'PromotionServicesEvent.startedService(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartedService &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedServiceCopyWith<_$StartedService> get copyWith =>
      __$$StartedServiceCopyWithImpl<_$StartedService>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) startedService,
    required TResult Function() onRefresh,
    required TResult Function() onLoad,
    required TResult Function(List<ServicePromotion> listService,
            List<ServicePromotion> listServiceDelete)
        getOldService,
    required TResult Function(ServiceModel value) addService,
    required TResult Function(ServicePromotion value) deleteService,
  }) {
    return startedService(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? startedService,
    TResult? Function()? onRefresh,
    TResult? Function()? onLoad,
    TResult? Function(List<ServicePromotion> listService,
            List<ServicePromotion> listServiceDelete)?
        getOldService,
    TResult? Function(ServiceModel value)? addService,
    TResult? Function(ServicePromotion value)? deleteService,
  }) {
    return startedService?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? startedService,
    TResult Function()? onRefresh,
    TResult Function()? onLoad,
    TResult Function(List<ServicePromotion> listService,
            List<ServicePromotion> listServiceDelete)?
        getOldService,
    TResult Function(ServiceModel value)? addService,
    TResult Function(ServicePromotion value)? deleteService,
    required TResult orElse(),
  }) {
    if (startedService != null) {
      return startedService(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartedService value) startedService,
    required TResult Function(OnRefresh value) onRefresh,
    required TResult Function(OnLoad value) onLoad,
    required TResult Function(GetOldService value) getOldService,
    required TResult Function(AddService value) addService,
    required TResult Function(DeleteService value) deleteService,
  }) {
    return startedService(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartedService value)? startedService,
    TResult? Function(OnRefresh value)? onRefresh,
    TResult? Function(OnLoad value)? onLoad,
    TResult? Function(GetOldService value)? getOldService,
    TResult? Function(AddService value)? addService,
    TResult? Function(DeleteService value)? deleteService,
  }) {
    return startedService?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartedService value)? startedService,
    TResult Function(OnRefresh value)? onRefresh,
    TResult Function(OnLoad value)? onLoad,
    TResult Function(GetOldService value)? getOldService,
    TResult Function(AddService value)? addService,
    TResult Function(DeleteService value)? deleteService,
    required TResult orElse(),
  }) {
    if (startedService != null) {
      return startedService(this);
    }
    return orElse();
  }
}

abstract class StartedService implements PromotionServicesEvent {
  const factory StartedService(final int id) = _$StartedService;

  int get id;
  @JsonKey(ignore: true)
  _$$StartedServiceCopyWith<_$StartedService> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnRefreshCopyWith<$Res> {
  factory _$$OnRefreshCopyWith(
          _$OnRefresh value, $Res Function(_$OnRefresh) then) =
      __$$OnRefreshCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnRefreshCopyWithImpl<$Res>
    extends _$PromotionServicesEventCopyWithImpl<$Res, _$OnRefresh>
    implements _$$OnRefreshCopyWith<$Res> {
  __$$OnRefreshCopyWithImpl(
      _$OnRefresh _value, $Res Function(_$OnRefresh) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OnRefresh implements OnRefresh {
  const _$OnRefresh();

  @override
  String toString() {
    return 'PromotionServicesEvent.onRefresh()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnRefresh);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) startedService,
    required TResult Function() onRefresh,
    required TResult Function() onLoad,
    required TResult Function(List<ServicePromotion> listService,
            List<ServicePromotion> listServiceDelete)
        getOldService,
    required TResult Function(ServiceModel value) addService,
    required TResult Function(ServicePromotion value) deleteService,
  }) {
    return onRefresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? startedService,
    TResult? Function()? onRefresh,
    TResult? Function()? onLoad,
    TResult? Function(List<ServicePromotion> listService,
            List<ServicePromotion> listServiceDelete)?
        getOldService,
    TResult? Function(ServiceModel value)? addService,
    TResult? Function(ServicePromotion value)? deleteService,
  }) {
    return onRefresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? startedService,
    TResult Function()? onRefresh,
    TResult Function()? onLoad,
    TResult Function(List<ServicePromotion> listService,
            List<ServicePromotion> listServiceDelete)?
        getOldService,
    TResult Function(ServiceModel value)? addService,
    TResult Function(ServicePromotion value)? deleteService,
    required TResult orElse(),
  }) {
    if (onRefresh != null) {
      return onRefresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartedService value) startedService,
    required TResult Function(OnRefresh value) onRefresh,
    required TResult Function(OnLoad value) onLoad,
    required TResult Function(GetOldService value) getOldService,
    required TResult Function(AddService value) addService,
    required TResult Function(DeleteService value) deleteService,
  }) {
    return onRefresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartedService value)? startedService,
    TResult? Function(OnRefresh value)? onRefresh,
    TResult? Function(OnLoad value)? onLoad,
    TResult? Function(GetOldService value)? getOldService,
    TResult? Function(AddService value)? addService,
    TResult? Function(DeleteService value)? deleteService,
  }) {
    return onRefresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartedService value)? startedService,
    TResult Function(OnRefresh value)? onRefresh,
    TResult Function(OnLoad value)? onLoad,
    TResult Function(GetOldService value)? getOldService,
    TResult Function(AddService value)? addService,
    TResult Function(DeleteService value)? deleteService,
    required TResult orElse(),
  }) {
    if (onRefresh != null) {
      return onRefresh(this);
    }
    return orElse();
  }
}

abstract class OnRefresh implements PromotionServicesEvent {
  const factory OnRefresh() = _$OnRefresh;
}

/// @nodoc
abstract class _$$OnLoadCopyWith<$Res> {
  factory _$$OnLoadCopyWith(_$OnLoad value, $Res Function(_$OnLoad) then) =
      __$$OnLoadCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnLoadCopyWithImpl<$Res>
    extends _$PromotionServicesEventCopyWithImpl<$Res, _$OnLoad>
    implements _$$OnLoadCopyWith<$Res> {
  __$$OnLoadCopyWithImpl(_$OnLoad _value, $Res Function(_$OnLoad) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OnLoad implements OnLoad {
  const _$OnLoad();

  @override
  String toString() {
    return 'PromotionServicesEvent.onLoad()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnLoad);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) startedService,
    required TResult Function() onRefresh,
    required TResult Function() onLoad,
    required TResult Function(List<ServicePromotion> listService,
            List<ServicePromotion> listServiceDelete)
        getOldService,
    required TResult Function(ServiceModel value) addService,
    required TResult Function(ServicePromotion value) deleteService,
  }) {
    return onLoad();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? startedService,
    TResult? Function()? onRefresh,
    TResult? Function()? onLoad,
    TResult? Function(List<ServicePromotion> listService,
            List<ServicePromotion> listServiceDelete)?
        getOldService,
    TResult? Function(ServiceModel value)? addService,
    TResult? Function(ServicePromotion value)? deleteService,
  }) {
    return onLoad?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? startedService,
    TResult Function()? onRefresh,
    TResult Function()? onLoad,
    TResult Function(List<ServicePromotion> listService,
            List<ServicePromotion> listServiceDelete)?
        getOldService,
    TResult Function(ServiceModel value)? addService,
    TResult Function(ServicePromotion value)? deleteService,
    required TResult orElse(),
  }) {
    if (onLoad != null) {
      return onLoad();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartedService value) startedService,
    required TResult Function(OnRefresh value) onRefresh,
    required TResult Function(OnLoad value) onLoad,
    required TResult Function(GetOldService value) getOldService,
    required TResult Function(AddService value) addService,
    required TResult Function(DeleteService value) deleteService,
  }) {
    return onLoad(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartedService value)? startedService,
    TResult? Function(OnRefresh value)? onRefresh,
    TResult? Function(OnLoad value)? onLoad,
    TResult? Function(GetOldService value)? getOldService,
    TResult? Function(AddService value)? addService,
    TResult? Function(DeleteService value)? deleteService,
  }) {
    return onLoad?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartedService value)? startedService,
    TResult Function(OnRefresh value)? onRefresh,
    TResult Function(OnLoad value)? onLoad,
    TResult Function(GetOldService value)? getOldService,
    TResult Function(AddService value)? addService,
    TResult Function(DeleteService value)? deleteService,
    required TResult orElse(),
  }) {
    if (onLoad != null) {
      return onLoad(this);
    }
    return orElse();
  }
}

abstract class OnLoad implements PromotionServicesEvent {
  const factory OnLoad() = _$OnLoad;
}

/// @nodoc
abstract class _$$GetOldServiceCopyWith<$Res> {
  factory _$$GetOldServiceCopyWith(
          _$GetOldService value, $Res Function(_$GetOldService) then) =
      __$$GetOldServiceCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<ServicePromotion> listService,
      List<ServicePromotion> listServiceDelete});
}

/// @nodoc
class __$$GetOldServiceCopyWithImpl<$Res>
    extends _$PromotionServicesEventCopyWithImpl<$Res, _$GetOldService>
    implements _$$GetOldServiceCopyWith<$Res> {
  __$$GetOldServiceCopyWithImpl(
      _$GetOldService _value, $Res Function(_$GetOldService) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listService = null,
    Object? listServiceDelete = null,
  }) {
    return _then(_$GetOldService(
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

class _$GetOldService implements GetOldService {
  const _$GetOldService(
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
    return 'PromotionServicesEvent.getOldService(listService: $listService, listServiceDelete: $listServiceDelete)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetOldService &&
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
  _$$GetOldServiceCopyWith<_$GetOldService> get copyWith =>
      __$$GetOldServiceCopyWithImpl<_$GetOldService>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) startedService,
    required TResult Function() onRefresh,
    required TResult Function() onLoad,
    required TResult Function(List<ServicePromotion> listService,
            List<ServicePromotion> listServiceDelete)
        getOldService,
    required TResult Function(ServiceModel value) addService,
    required TResult Function(ServicePromotion value) deleteService,
  }) {
    return getOldService(listService, listServiceDelete);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? startedService,
    TResult? Function()? onRefresh,
    TResult? Function()? onLoad,
    TResult? Function(List<ServicePromotion> listService,
            List<ServicePromotion> listServiceDelete)?
        getOldService,
    TResult? Function(ServiceModel value)? addService,
    TResult? Function(ServicePromotion value)? deleteService,
  }) {
    return getOldService?.call(listService, listServiceDelete);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? startedService,
    TResult Function()? onRefresh,
    TResult Function()? onLoad,
    TResult Function(List<ServicePromotion> listService,
            List<ServicePromotion> listServiceDelete)?
        getOldService,
    TResult Function(ServiceModel value)? addService,
    TResult Function(ServicePromotion value)? deleteService,
    required TResult orElse(),
  }) {
    if (getOldService != null) {
      return getOldService(listService, listServiceDelete);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartedService value) startedService,
    required TResult Function(OnRefresh value) onRefresh,
    required TResult Function(OnLoad value) onLoad,
    required TResult Function(GetOldService value) getOldService,
    required TResult Function(AddService value) addService,
    required TResult Function(DeleteService value) deleteService,
  }) {
    return getOldService(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartedService value)? startedService,
    TResult? Function(OnRefresh value)? onRefresh,
    TResult? Function(OnLoad value)? onLoad,
    TResult? Function(GetOldService value)? getOldService,
    TResult? Function(AddService value)? addService,
    TResult? Function(DeleteService value)? deleteService,
  }) {
    return getOldService?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartedService value)? startedService,
    TResult Function(OnRefresh value)? onRefresh,
    TResult Function(OnLoad value)? onLoad,
    TResult Function(GetOldService value)? getOldService,
    TResult Function(AddService value)? addService,
    TResult Function(DeleteService value)? deleteService,
    required TResult orElse(),
  }) {
    if (getOldService != null) {
      return getOldService(this);
    }
    return orElse();
  }
}

abstract class GetOldService implements PromotionServicesEvent {
  const factory GetOldService(
      {final List<ServicePromotion> listService,
      final List<ServicePromotion> listServiceDelete}) = _$GetOldService;

  List<ServicePromotion> get listService;
  List<ServicePromotion> get listServiceDelete;
  @JsonKey(ignore: true)
  _$$GetOldServiceCopyWith<_$GetOldService> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddServiceCopyWith<$Res> {
  factory _$$AddServiceCopyWith(
          _$AddService value, $Res Function(_$AddService) then) =
      __$$AddServiceCopyWithImpl<$Res>;
  @useResult
  $Res call({ServiceModel value});

  $ServiceModelCopyWith<$Res> get value;
}

/// @nodoc
class __$$AddServiceCopyWithImpl<$Res>
    extends _$PromotionServicesEventCopyWithImpl<$Res, _$AddService>
    implements _$$AddServiceCopyWith<$Res> {
  __$$AddServiceCopyWithImpl(
      _$AddService _value, $Res Function(_$AddService) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$AddService(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as ServiceModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ServiceModelCopyWith<$Res> get value {
    return $ServiceModelCopyWith<$Res>(_value.value, (value) {
      return _then(_value.copyWith(value: value));
    });
  }
}

/// @nodoc

class _$AddService implements AddService {
  const _$AddService(this.value);

  @override
  final ServiceModel value;

  @override
  String toString() {
    return 'PromotionServicesEvent.addService(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddService &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddServiceCopyWith<_$AddService> get copyWith =>
      __$$AddServiceCopyWithImpl<_$AddService>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) startedService,
    required TResult Function() onRefresh,
    required TResult Function() onLoad,
    required TResult Function(List<ServicePromotion> listService,
            List<ServicePromotion> listServiceDelete)
        getOldService,
    required TResult Function(ServiceModel value) addService,
    required TResult Function(ServicePromotion value) deleteService,
  }) {
    return addService(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? startedService,
    TResult? Function()? onRefresh,
    TResult? Function()? onLoad,
    TResult? Function(List<ServicePromotion> listService,
            List<ServicePromotion> listServiceDelete)?
        getOldService,
    TResult? Function(ServiceModel value)? addService,
    TResult? Function(ServicePromotion value)? deleteService,
  }) {
    return addService?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? startedService,
    TResult Function()? onRefresh,
    TResult Function()? onLoad,
    TResult Function(List<ServicePromotion> listService,
            List<ServicePromotion> listServiceDelete)?
        getOldService,
    TResult Function(ServiceModel value)? addService,
    TResult Function(ServicePromotion value)? deleteService,
    required TResult orElse(),
  }) {
    if (addService != null) {
      return addService(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartedService value) startedService,
    required TResult Function(OnRefresh value) onRefresh,
    required TResult Function(OnLoad value) onLoad,
    required TResult Function(GetOldService value) getOldService,
    required TResult Function(AddService value) addService,
    required TResult Function(DeleteService value) deleteService,
  }) {
    return addService(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartedService value)? startedService,
    TResult? Function(OnRefresh value)? onRefresh,
    TResult? Function(OnLoad value)? onLoad,
    TResult? Function(GetOldService value)? getOldService,
    TResult? Function(AddService value)? addService,
    TResult? Function(DeleteService value)? deleteService,
  }) {
    return addService?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartedService value)? startedService,
    TResult Function(OnRefresh value)? onRefresh,
    TResult Function(OnLoad value)? onLoad,
    TResult Function(GetOldService value)? getOldService,
    TResult Function(AddService value)? addService,
    TResult Function(DeleteService value)? deleteService,
    required TResult orElse(),
  }) {
    if (addService != null) {
      return addService(this);
    }
    return orElse();
  }
}

abstract class AddService implements PromotionServicesEvent {
  const factory AddService(final ServiceModel value) = _$AddService;

  ServiceModel get value;
  @JsonKey(ignore: true)
  _$$AddServiceCopyWith<_$AddService> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteServiceCopyWith<$Res> {
  factory _$$DeleteServiceCopyWith(
          _$DeleteService value, $Res Function(_$DeleteService) then) =
      __$$DeleteServiceCopyWithImpl<$Res>;
  @useResult
  $Res call({ServicePromotion value});

  $ServicePromotionCopyWith<$Res> get value;
}

/// @nodoc
class __$$DeleteServiceCopyWithImpl<$Res>
    extends _$PromotionServicesEventCopyWithImpl<$Res, _$DeleteService>
    implements _$$DeleteServiceCopyWith<$Res> {
  __$$DeleteServiceCopyWithImpl(
      _$DeleteService _value, $Res Function(_$DeleteService) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$DeleteService(
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

class _$DeleteService implements DeleteService {
  const _$DeleteService(this.value);

  @override
  final ServicePromotion value;

  @override
  String toString() {
    return 'PromotionServicesEvent.deleteService(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteService &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteServiceCopyWith<_$DeleteService> get copyWith =>
      __$$DeleteServiceCopyWithImpl<_$DeleteService>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) startedService,
    required TResult Function() onRefresh,
    required TResult Function() onLoad,
    required TResult Function(List<ServicePromotion> listService,
            List<ServicePromotion> listServiceDelete)
        getOldService,
    required TResult Function(ServiceModel value) addService,
    required TResult Function(ServicePromotion value) deleteService,
  }) {
    return deleteService(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? startedService,
    TResult? Function()? onRefresh,
    TResult? Function()? onLoad,
    TResult? Function(List<ServicePromotion> listService,
            List<ServicePromotion> listServiceDelete)?
        getOldService,
    TResult? Function(ServiceModel value)? addService,
    TResult? Function(ServicePromotion value)? deleteService,
  }) {
    return deleteService?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? startedService,
    TResult Function()? onRefresh,
    TResult Function()? onLoad,
    TResult Function(List<ServicePromotion> listService,
            List<ServicePromotion> listServiceDelete)?
        getOldService,
    TResult Function(ServiceModel value)? addService,
    TResult Function(ServicePromotion value)? deleteService,
    required TResult orElse(),
  }) {
    if (deleteService != null) {
      return deleteService(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartedService value) startedService,
    required TResult Function(OnRefresh value) onRefresh,
    required TResult Function(OnLoad value) onLoad,
    required TResult Function(GetOldService value) getOldService,
    required TResult Function(AddService value) addService,
    required TResult Function(DeleteService value) deleteService,
  }) {
    return deleteService(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartedService value)? startedService,
    TResult? Function(OnRefresh value)? onRefresh,
    TResult? Function(OnLoad value)? onLoad,
    TResult? Function(GetOldService value)? getOldService,
    TResult? Function(AddService value)? addService,
    TResult? Function(DeleteService value)? deleteService,
  }) {
    return deleteService?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartedService value)? startedService,
    TResult Function(OnRefresh value)? onRefresh,
    TResult Function(OnLoad value)? onLoad,
    TResult Function(GetOldService value)? getOldService,
    TResult Function(AddService value)? addService,
    TResult Function(DeleteService value)? deleteService,
    required TResult orElse(),
  }) {
    if (deleteService != null) {
      return deleteService(this);
    }
    return orElse();
  }
}

abstract class DeleteService implements PromotionServicesEvent {
  const factory DeleteService(final ServicePromotion value) = _$DeleteService;

  ServicePromotion get value;
  @JsonKey(ignore: true)
  _$$DeleteServiceCopyWith<_$DeleteService> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PromotionServicesState {
  bool get isLoading => throw _privateConstructorUsedError;
  int get total_count => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  List<ServicePromotion> get listServicePromotion =>
      throw _privateConstructorUsedError;
  List<ServicePromotion> get listDeletePromotion =>
      throw _privateConstructorUsedError;
  List<ServiceModel> get listService => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PromotionServicesStateCopyWith<PromotionServicesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromotionServicesStateCopyWith<$Res> {
  factory $PromotionServicesStateCopyWith(PromotionServicesState value,
          $Res Function(PromotionServicesState) then) =
      _$PromotionServicesStateCopyWithImpl<$Res, PromotionServicesState>;
  @useResult
  $Res call(
      {bool isLoading,
      int total_count,
      int page,
      List<ServicePromotion> listServicePromotion,
      List<ServicePromotion> listDeletePromotion,
      List<ServiceModel> listService});
}

/// @nodoc
class _$PromotionServicesStateCopyWithImpl<$Res,
        $Val extends PromotionServicesState>
    implements $PromotionServicesStateCopyWith<$Res> {
  _$PromotionServicesStateCopyWithImpl(this._value, this._then);

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
    Object? listServicePromotion = null,
    Object? listDeletePromotion = null,
    Object? listService = null,
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
      listServicePromotion: null == listServicePromotion
          ? _value.listServicePromotion
          : listServicePromotion // ignore: cast_nullable_to_non_nullable
              as List<ServicePromotion>,
      listDeletePromotion: null == listDeletePromotion
          ? _value.listDeletePromotion
          : listDeletePromotion // ignore: cast_nullable_to_non_nullable
              as List<ServicePromotion>,
      listService: null == listService
          ? _value.listService
          : listService // ignore: cast_nullable_to_non_nullable
              as List<ServiceModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PromotionServicesStateCopyWith<$Res>
    implements $PromotionServicesStateCopyWith<$Res> {
  factory _$$_PromotionServicesStateCopyWith(_$_PromotionServicesState value,
          $Res Function(_$_PromotionServicesState) then) =
      __$$_PromotionServicesStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      int total_count,
      int page,
      List<ServicePromotion> listServicePromotion,
      List<ServicePromotion> listDeletePromotion,
      List<ServiceModel> listService});
}

/// @nodoc
class __$$_PromotionServicesStateCopyWithImpl<$Res>
    extends _$PromotionServicesStateCopyWithImpl<$Res,
        _$_PromotionServicesState>
    implements _$$_PromotionServicesStateCopyWith<$Res> {
  __$$_PromotionServicesStateCopyWithImpl(_$_PromotionServicesState _value,
      $Res Function(_$_PromotionServicesState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? total_count = null,
    Object? page = null,
    Object? listServicePromotion = null,
    Object? listDeletePromotion = null,
    Object? listService = null,
  }) {
    return _then(_$_PromotionServicesState(
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
      listServicePromotion: null == listServicePromotion
          ? _value._listServicePromotion
          : listServicePromotion // ignore: cast_nullable_to_non_nullable
              as List<ServicePromotion>,
      listDeletePromotion: null == listDeletePromotion
          ? _value._listDeletePromotion
          : listDeletePromotion // ignore: cast_nullable_to_non_nullable
              as List<ServicePromotion>,
      listService: null == listService
          ? _value._listService
          : listService // ignore: cast_nullable_to_non_nullable
              as List<ServiceModel>,
    ));
  }
}

/// @nodoc

class _$_PromotionServicesState implements _PromotionServicesState {
  const _$_PromotionServicesState(
      {this.isLoading = false,
      this.total_count = 0,
      this.page = 1,
      final List<ServicePromotion> listServicePromotion = const [],
      final List<ServicePromotion> listDeletePromotion = const [],
      final List<ServiceModel> listService = const []})
      : _listServicePromotion = listServicePromotion,
        _listDeletePromotion = listDeletePromotion,
        _listService = listService;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final int total_count;
  @override
  @JsonKey()
  final int page;
  final List<ServicePromotion> _listServicePromotion;
  @override
  @JsonKey()
  List<ServicePromotion> get listServicePromotion {
    if (_listServicePromotion is EqualUnmodifiableListView)
      return _listServicePromotion;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listServicePromotion);
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

  final List<ServiceModel> _listService;
  @override
  @JsonKey()
  List<ServiceModel> get listService {
    if (_listService is EqualUnmodifiableListView) return _listService;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listService);
  }

  @override
  String toString() {
    return 'PromotionServicesState(isLoading: $isLoading, total_count: $total_count, page: $page, listServicePromotion: $listServicePromotion, listDeletePromotion: $listDeletePromotion, listService: $listService)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PromotionServicesState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.total_count, total_count) ||
                other.total_count == total_count) &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality()
                .equals(other._listServicePromotion, _listServicePromotion) &&
            const DeepCollectionEquality()
                .equals(other._listDeletePromotion, _listDeletePromotion) &&
            const DeepCollectionEquality()
                .equals(other._listService, _listService));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      total_count,
      page,
      const DeepCollectionEquality().hash(_listServicePromotion),
      const DeepCollectionEquality().hash(_listDeletePromotion),
      const DeepCollectionEquality().hash(_listService));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PromotionServicesStateCopyWith<_$_PromotionServicesState> get copyWith =>
      __$$_PromotionServicesStateCopyWithImpl<_$_PromotionServicesState>(
          this, _$identity);
}

abstract class _PromotionServicesState implements PromotionServicesState {
  const factory _PromotionServicesState(
      {final bool isLoading,
      final int total_count,
      final int page,
      final List<ServicePromotion> listServicePromotion,
      final List<ServicePromotion> listDeletePromotion,
      final List<ServiceModel> listService}) = _$_PromotionServicesState;

  @override
  bool get isLoading;
  @override
  int get total_count;
  @override
  int get page;
  @override
  List<ServicePromotion> get listServicePromotion;
  @override
  List<ServicePromotion> get listDeletePromotion;
  @override
  List<ServiceModel> get listService;
  @override
  @JsonKey(ignore: true)
  _$$_PromotionServicesStateCopyWith<_$_PromotionServicesState> get copyWith =>
      throw _privateConstructorUsedError;
}
