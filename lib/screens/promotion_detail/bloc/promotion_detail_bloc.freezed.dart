// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'promotion_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PromotionDetailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() active,
    required TResult Function(String tab) changeTab,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? active,
    TResult? Function(String tab)? changeTab,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? active,
    TResult Function(String tab)? changeTab,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(Active value) active,
    required TResult Function(ChangeTab value) changeTab,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(Active value)? active,
    TResult? Function(ChangeTab value)? changeTab,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Active value)? active,
    TResult Function(ChangeTab value)? changeTab,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromotionDetailEventCopyWith<$Res> {
  factory $PromotionDetailEventCopyWith(PromotionDetailEvent value,
          $Res Function(PromotionDetailEvent) then) =
      _$PromotionDetailEventCopyWithImpl<$Res, PromotionDetailEvent>;
}

/// @nodoc
class _$PromotionDetailEventCopyWithImpl<$Res,
        $Val extends PromotionDetailEvent>
    implements $PromotionDetailEventCopyWith<$Res> {
  _$PromotionDetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedCopyWith<$Res> {
  factory _$$StartedCopyWith(_$Started value, $Res Function(_$Started) then) =
      __$$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedCopyWithImpl<$Res>
    extends _$PromotionDetailEventCopyWithImpl<$Res, _$Started>
    implements _$$StartedCopyWith<$Res> {
  __$$StartedCopyWithImpl(_$Started _value, $Res Function(_$Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Started implements Started {
  const _$Started();

  @override
  String toString() {
    return 'PromotionDetailEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() active,
    required TResult Function(String tab) changeTab,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? active,
    TResult? Function(String tab)? changeTab,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? active,
    TResult Function(String tab)? changeTab,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(Active value) active,
    required TResult Function(ChangeTab value) changeTab,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(Active value)? active,
    TResult? Function(ChangeTab value)? changeTab,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Active value)? active,
    TResult Function(ChangeTab value)? changeTab,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class Started implements PromotionDetailEvent {
  const factory Started() = _$Started;
}

/// @nodoc
abstract class _$$ActiveCopyWith<$Res> {
  factory _$$ActiveCopyWith(_$Active value, $Res Function(_$Active) then) =
      __$$ActiveCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ActiveCopyWithImpl<$Res>
    extends _$PromotionDetailEventCopyWithImpl<$Res, _$Active>
    implements _$$ActiveCopyWith<$Res> {
  __$$ActiveCopyWithImpl(_$Active _value, $Res Function(_$Active) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Active implements Active {
  const _$Active();

  @override
  String toString() {
    return 'PromotionDetailEvent.active()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Active);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() active,
    required TResult Function(String tab) changeTab,
  }) {
    return active();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? active,
    TResult? Function(String tab)? changeTab,
  }) {
    return active?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? active,
    TResult Function(String tab)? changeTab,
    required TResult orElse(),
  }) {
    if (active != null) {
      return active();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(Active value) active,
    required TResult Function(ChangeTab value) changeTab,
  }) {
    return active(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(Active value)? active,
    TResult? Function(ChangeTab value)? changeTab,
  }) {
    return active?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Active value)? active,
    TResult Function(ChangeTab value)? changeTab,
    required TResult orElse(),
  }) {
    if (active != null) {
      return active(this);
    }
    return orElse();
  }
}

abstract class Active implements PromotionDetailEvent {
  const factory Active() = _$Active;
}

/// @nodoc
abstract class _$$ChangeTabCopyWith<$Res> {
  factory _$$ChangeTabCopyWith(
          _$ChangeTab value, $Res Function(_$ChangeTab) then) =
      __$$ChangeTabCopyWithImpl<$Res>;
  @useResult
  $Res call({String tab});
}

/// @nodoc
class __$$ChangeTabCopyWithImpl<$Res>
    extends _$PromotionDetailEventCopyWithImpl<$Res, _$ChangeTab>
    implements _$$ChangeTabCopyWith<$Res> {
  __$$ChangeTabCopyWithImpl(
      _$ChangeTab _value, $Res Function(_$ChangeTab) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tab = null,
  }) {
    return _then(_$ChangeTab(
      null == tab
          ? _value.tab
          : tab // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangeTab implements ChangeTab {
  const _$ChangeTab(this.tab);

  @override
  final String tab;

  @override
  String toString() {
    return 'PromotionDetailEvent.changeTab(tab: $tab)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeTab &&
            (identical(other.tab, tab) || other.tab == tab));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tab);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeTabCopyWith<_$ChangeTab> get copyWith =>
      __$$ChangeTabCopyWithImpl<_$ChangeTab>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() active,
    required TResult Function(String tab) changeTab,
  }) {
    return changeTab(tab);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? active,
    TResult? Function(String tab)? changeTab,
  }) {
    return changeTab?.call(tab);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? active,
    TResult Function(String tab)? changeTab,
    required TResult orElse(),
  }) {
    if (changeTab != null) {
      return changeTab(tab);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(Active value) active,
    required TResult Function(ChangeTab value) changeTab,
  }) {
    return changeTab(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(Active value)? active,
    TResult? Function(ChangeTab value)? changeTab,
  }) {
    return changeTab?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Active value)? active,
    TResult Function(ChangeTab value)? changeTab,
    required TResult orElse(),
  }) {
    if (changeTab != null) {
      return changeTab(this);
    }
    return orElse();
  }
}

abstract class ChangeTab implements PromotionDetailEvent {
  const factory ChangeTab(final String tab) = _$ChangeTab;

  String get tab;
  @JsonKey(ignore: true)
  _$$ChangeTabCopyWith<_$ChangeTab> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PromotionDetailState {
  bool get isLoading => throw _privateConstructorUsedError;
  int get total_count => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  PromotionModel get promotion => throw _privateConstructorUsedError;
  List<CustomerVoucherList> get listCustomer =>
      throw _privateConstructorUsedError;
  String get tab => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PromotionDetailStateCopyWith<PromotionDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromotionDetailStateCopyWith<$Res> {
  factory $PromotionDetailStateCopyWith(PromotionDetailState value,
          $Res Function(PromotionDetailState) then) =
      _$PromotionDetailStateCopyWithImpl<$Res, PromotionDetailState>;
  @useResult
  $Res call(
      {bool isLoading,
      int total_count,
      int page,
      PromotionModel promotion,
      List<CustomerVoucherList> listCustomer,
      String tab});

  $PromotionModelCopyWith<$Res> get promotion;
}

/// @nodoc
class _$PromotionDetailStateCopyWithImpl<$Res,
        $Val extends PromotionDetailState>
    implements $PromotionDetailStateCopyWith<$Res> {
  _$PromotionDetailStateCopyWithImpl(this._value, this._then);

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
    Object? promotion = null,
    Object? listCustomer = null,
    Object? tab = null,
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
      promotion: null == promotion
          ? _value.promotion
          : promotion // ignore: cast_nullable_to_non_nullable
              as PromotionModel,
      listCustomer: null == listCustomer
          ? _value.listCustomer
          : listCustomer // ignore: cast_nullable_to_non_nullable
              as List<CustomerVoucherList>,
      tab: null == tab
          ? _value.tab
          : tab // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PromotionModelCopyWith<$Res> get promotion {
    return $PromotionModelCopyWith<$Res>(_value.promotion, (value) {
      return _then(_value.copyWith(promotion: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PromotionDetailStateCopyWith<$Res>
    implements $PromotionDetailStateCopyWith<$Res> {
  factory _$$_PromotionDetailStateCopyWith(_$_PromotionDetailState value,
          $Res Function(_$_PromotionDetailState) then) =
      __$$_PromotionDetailStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      int total_count,
      int page,
      PromotionModel promotion,
      List<CustomerVoucherList> listCustomer,
      String tab});

  @override
  $PromotionModelCopyWith<$Res> get promotion;
}

/// @nodoc
class __$$_PromotionDetailStateCopyWithImpl<$Res>
    extends _$PromotionDetailStateCopyWithImpl<$Res, _$_PromotionDetailState>
    implements _$$_PromotionDetailStateCopyWith<$Res> {
  __$$_PromotionDetailStateCopyWithImpl(_$_PromotionDetailState _value,
      $Res Function(_$_PromotionDetailState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? total_count = null,
    Object? page = null,
    Object? promotion = null,
    Object? listCustomer = null,
    Object? tab = null,
  }) {
    return _then(_$_PromotionDetailState(
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
      promotion: null == promotion
          ? _value.promotion
          : promotion // ignore: cast_nullable_to_non_nullable
              as PromotionModel,
      listCustomer: null == listCustomer
          ? _value._listCustomer
          : listCustomer // ignore: cast_nullable_to_non_nullable
              as List<CustomerVoucherList>,
      tab: null == tab
          ? _value.tab
          : tab // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PromotionDetailState implements _PromotionDetailState {
  const _$_PromotionDetailState(
      {this.isLoading = false,
      this.total_count = 0,
      this.page = 1,
      this.promotion = const PromotionModel(),
      final List<CustomerVoucherList> listCustomer = const [],
      required this.tab})
      : _listCustomer = listCustomer;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final int total_count;
  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final PromotionModel promotion;
  final List<CustomerVoucherList> _listCustomer;
  @override
  @JsonKey()
  List<CustomerVoucherList> get listCustomer {
    if (_listCustomer is EqualUnmodifiableListView) return _listCustomer;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listCustomer);
  }

  @override
  final String tab;

  @override
  String toString() {
    return 'PromotionDetailState(isLoading: $isLoading, total_count: $total_count, page: $page, promotion: $promotion, listCustomer: $listCustomer, tab: $tab)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PromotionDetailState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.total_count, total_count) ||
                other.total_count == total_count) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.promotion, promotion) ||
                other.promotion == promotion) &&
            const DeepCollectionEquality()
                .equals(other._listCustomer, _listCustomer) &&
            (identical(other.tab, tab) || other.tab == tab));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, total_count, page,
      promotion, const DeepCollectionEquality().hash(_listCustomer), tab);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PromotionDetailStateCopyWith<_$_PromotionDetailState> get copyWith =>
      __$$_PromotionDetailStateCopyWithImpl<_$_PromotionDetailState>(
          this, _$identity);
}

abstract class _PromotionDetailState implements PromotionDetailState {
  const factory _PromotionDetailState(
      {final bool isLoading,
      final int total_count,
      final int page,
      final PromotionModel promotion,
      final List<CustomerVoucherList> listCustomer,
      required final String tab}) = _$_PromotionDetailState;

  @override
  bool get isLoading;
  @override
  int get total_count;
  @override
  int get page;
  @override
  PromotionModel get promotion;
  @override
  List<CustomerVoucherList> get listCustomer;
  @override
  String get tab;
  @override
  @JsonKey(ignore: true)
  _$$_PromotionDetailStateCopyWith<_$_PromotionDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}
