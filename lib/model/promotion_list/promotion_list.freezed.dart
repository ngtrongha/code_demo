// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'promotion_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PromotionList _$PromotionListFromJson(Map<String, dynamic> json) {
  return _PromotionList.fromJson(json);
}

/// @nodoc
mixin _$PromotionList {
  List<DiscountList> get discount_list => throw _privateConstructorUsedError;
  int get total_count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PromotionListCopyWith<PromotionList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromotionListCopyWith<$Res> {
  factory $PromotionListCopyWith(
          PromotionList value, $Res Function(PromotionList) then) =
      _$PromotionListCopyWithImpl<$Res, PromotionList>;
  @useResult
  $Res call({List<DiscountList> discount_list, int total_count});
}

/// @nodoc
class _$PromotionListCopyWithImpl<$Res, $Val extends PromotionList>
    implements $PromotionListCopyWith<$Res> {
  _$PromotionListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? discount_list = null,
    Object? total_count = null,
  }) {
    return _then(_value.copyWith(
      discount_list: null == discount_list
          ? _value.discount_list
          : discount_list // ignore: cast_nullable_to_non_nullable
              as List<DiscountList>,
      total_count: null == total_count
          ? _value.total_count
          : total_count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PromotionListCopyWith<$Res>
    implements $PromotionListCopyWith<$Res> {
  factory _$$_PromotionListCopyWith(
          _$_PromotionList value, $Res Function(_$_PromotionList) then) =
      __$$_PromotionListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<DiscountList> discount_list, int total_count});
}

/// @nodoc
class __$$_PromotionListCopyWithImpl<$Res>
    extends _$PromotionListCopyWithImpl<$Res, _$_PromotionList>
    implements _$$_PromotionListCopyWith<$Res> {
  __$$_PromotionListCopyWithImpl(
      _$_PromotionList _value, $Res Function(_$_PromotionList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? discount_list = null,
    Object? total_count = null,
  }) {
    return _then(_$_PromotionList(
      discount_list: null == discount_list
          ? _value._discount_list
          : discount_list // ignore: cast_nullable_to_non_nullable
              as List<DiscountList>,
      total_count: null == total_count
          ? _value.total_count
          : total_count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PromotionList implements _PromotionList {
  const _$_PromotionList(
      {final List<DiscountList> discount_list = const [], this.total_count = 0})
      : _discount_list = discount_list;

  factory _$_PromotionList.fromJson(Map<String, dynamic> json) =>
      _$$_PromotionListFromJson(json);

  final List<DiscountList> _discount_list;
  @override
  @JsonKey()
  List<DiscountList> get discount_list {
    if (_discount_list is EqualUnmodifiableListView) return _discount_list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_discount_list);
  }

  @override
  @JsonKey()
  final int total_count;

  @override
  String toString() {
    return 'PromotionList(discount_list: $discount_list, total_count: $total_count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PromotionList &&
            const DeepCollectionEquality()
                .equals(other._discount_list, _discount_list) &&
            (identical(other.total_count, total_count) ||
                other.total_count == total_count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_discount_list), total_count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PromotionListCopyWith<_$_PromotionList> get copyWith =>
      __$$_PromotionListCopyWithImpl<_$_PromotionList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PromotionListToJson(
      this,
    );
  }
}

abstract class _PromotionList implements PromotionList {
  const factory _PromotionList(
      {final List<DiscountList> discount_list,
      final int total_count}) = _$_PromotionList;

  factory _PromotionList.fromJson(Map<String, dynamic> json) =
      _$_PromotionList.fromJson;

  @override
  List<DiscountList> get discount_list;
  @override
  int get total_count;
  @override
  @JsonKey(ignore: true)
  _$$_PromotionListCopyWith<_$_PromotionList> get copyWith =>
      throw _privateConstructorUsedError;
}

DiscountList _$DiscountListFromJson(Map<String, dynamic> json) {
  return _DiscountList.fromJson(json);
}

/// @nodoc
mixin _$DiscountList {
  int get id => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get max_order_value => throw _privateConstructorUsedError;
  double get discount_value => throw _privateConstructorUsedError;
  String get discount_type_key => throw _privateConstructorUsedError;
  String get scope_object_key => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  int get amount_used => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DateTime? get from_date => throw _privateConstructorUsedError;
  DateTime? get to_date => throw _privateConstructorUsedError;
  bool get active => throw _privateConstructorUsedError;
  int get type_id => throw _privateConstructorUsedError;
  String get type_color => throw _privateConstructorUsedError;
  String get type_code => throw _privateConstructorUsedError;
  String get type_name => throw _privateConstructorUsedError;
  bool get timeout => throw _privateConstructorUsedError;
  String get approved_key => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiscountListCopyWith<DiscountList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscountListCopyWith<$Res> {
  factory $DiscountListCopyWith(
          DiscountList value, $Res Function(DiscountList) then) =
      _$DiscountListCopyWithImpl<$Res, DiscountList>;
  @useResult
  $Res call(
      {int id,
      String image,
      String name,
      double max_order_value,
      double discount_value,
      String discount_type_key,
      String scope_object_key,
      int amount,
      int amount_used,
      String description,
      DateTime? from_date,
      DateTime? to_date,
      bool active,
      int type_id,
      String type_color,
      String type_code,
      String type_name,
      bool timeout,
      String approved_key});
}

/// @nodoc
class _$DiscountListCopyWithImpl<$Res, $Val extends DiscountList>
    implements $DiscountListCopyWith<$Res> {
  _$DiscountListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
    Object? name = null,
    Object? max_order_value = null,
    Object? discount_value = null,
    Object? discount_type_key = null,
    Object? scope_object_key = null,
    Object? amount = null,
    Object? amount_used = null,
    Object? description = null,
    Object? from_date = freezed,
    Object? to_date = freezed,
    Object? active = null,
    Object? type_id = null,
    Object? type_color = null,
    Object? type_code = null,
    Object? type_name = null,
    Object? timeout = null,
    Object? approved_key = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      max_order_value: null == max_order_value
          ? _value.max_order_value
          : max_order_value // ignore: cast_nullable_to_non_nullable
              as double,
      discount_value: null == discount_value
          ? _value.discount_value
          : discount_value // ignore: cast_nullable_to_non_nullable
              as double,
      discount_type_key: null == discount_type_key
          ? _value.discount_type_key
          : discount_type_key // ignore: cast_nullable_to_non_nullable
              as String,
      scope_object_key: null == scope_object_key
          ? _value.scope_object_key
          : scope_object_key // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      amount_used: null == amount_used
          ? _value.amount_used
          : amount_used // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      from_date: freezed == from_date
          ? _value.from_date
          : from_date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      to_date: freezed == to_date
          ? _value.to_date
          : to_date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      type_id: null == type_id
          ? _value.type_id
          : type_id // ignore: cast_nullable_to_non_nullable
              as int,
      type_color: null == type_color
          ? _value.type_color
          : type_color // ignore: cast_nullable_to_non_nullable
              as String,
      type_code: null == type_code
          ? _value.type_code
          : type_code // ignore: cast_nullable_to_non_nullable
              as String,
      type_name: null == type_name
          ? _value.type_name
          : type_name // ignore: cast_nullable_to_non_nullable
              as String,
      timeout: null == timeout
          ? _value.timeout
          : timeout // ignore: cast_nullable_to_non_nullable
              as bool,
      approved_key: null == approved_key
          ? _value.approved_key
          : approved_key // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DiscountListCopyWith<$Res>
    implements $DiscountListCopyWith<$Res> {
  factory _$$_DiscountListCopyWith(
          _$_DiscountList value, $Res Function(_$_DiscountList) then) =
      __$$_DiscountListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String image,
      String name,
      double max_order_value,
      double discount_value,
      String discount_type_key,
      String scope_object_key,
      int amount,
      int amount_used,
      String description,
      DateTime? from_date,
      DateTime? to_date,
      bool active,
      int type_id,
      String type_color,
      String type_code,
      String type_name,
      bool timeout,
      String approved_key});
}

/// @nodoc
class __$$_DiscountListCopyWithImpl<$Res>
    extends _$DiscountListCopyWithImpl<$Res, _$_DiscountList>
    implements _$$_DiscountListCopyWith<$Res> {
  __$$_DiscountListCopyWithImpl(
      _$_DiscountList _value, $Res Function(_$_DiscountList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
    Object? name = null,
    Object? max_order_value = null,
    Object? discount_value = null,
    Object? discount_type_key = null,
    Object? scope_object_key = null,
    Object? amount = null,
    Object? amount_used = null,
    Object? description = null,
    Object? from_date = freezed,
    Object? to_date = freezed,
    Object? active = null,
    Object? type_id = null,
    Object? type_color = null,
    Object? type_code = null,
    Object? type_name = null,
    Object? timeout = null,
    Object? approved_key = null,
  }) {
    return _then(_$_DiscountList(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      max_order_value: null == max_order_value
          ? _value.max_order_value
          : max_order_value // ignore: cast_nullable_to_non_nullable
              as double,
      discount_value: null == discount_value
          ? _value.discount_value
          : discount_value // ignore: cast_nullable_to_non_nullable
              as double,
      discount_type_key: null == discount_type_key
          ? _value.discount_type_key
          : discount_type_key // ignore: cast_nullable_to_non_nullable
              as String,
      scope_object_key: null == scope_object_key
          ? _value.scope_object_key
          : scope_object_key // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      amount_used: null == amount_used
          ? _value.amount_used
          : amount_used // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      from_date: freezed == from_date
          ? _value.from_date
          : from_date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      to_date: freezed == to_date
          ? _value.to_date
          : to_date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      type_id: null == type_id
          ? _value.type_id
          : type_id // ignore: cast_nullable_to_non_nullable
              as int,
      type_color: null == type_color
          ? _value.type_color
          : type_color // ignore: cast_nullable_to_non_nullable
              as String,
      type_code: null == type_code
          ? _value.type_code
          : type_code // ignore: cast_nullable_to_non_nullable
              as String,
      type_name: null == type_name
          ? _value.type_name
          : type_name // ignore: cast_nullable_to_non_nullable
              as String,
      timeout: null == timeout
          ? _value.timeout
          : timeout // ignore: cast_nullable_to_non_nullable
              as bool,
      approved_key: null == approved_key
          ? _value.approved_key
          : approved_key // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DiscountList implements _DiscountList {
  const _$_DiscountList(
      {this.id = -1,
      this.image = '',
      this.name = '',
      this.max_order_value = 0,
      this.discount_value = 0,
      this.discount_type_key = '',
      this.scope_object_key = '',
      this.amount = 0,
      this.amount_used = 0,
      this.description = '',
      this.from_date,
      this.to_date,
      this.active = false,
      this.type_id = -1,
      this.type_color = '#FFFFFF',
      this.type_code = '',
      this.type_name = '',
      this.timeout = false,
      this.approved_key = ''});

  factory _$_DiscountList.fromJson(Map<String, dynamic> json) =>
      _$$_DiscountListFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String image;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final double max_order_value;
  @override
  @JsonKey()
  final double discount_value;
  @override
  @JsonKey()
  final String discount_type_key;
  @override
  @JsonKey()
  final String scope_object_key;
  @override
  @JsonKey()
  final int amount;
  @override
  @JsonKey()
  final int amount_used;
  @override
  @JsonKey()
  final String description;
  @override
  final DateTime? from_date;
  @override
  final DateTime? to_date;
  @override
  @JsonKey()
  final bool active;
  @override
  @JsonKey()
  final int type_id;
  @override
  @JsonKey()
  final String type_color;
  @override
  @JsonKey()
  final String type_code;
  @override
  @JsonKey()
  final String type_name;
  @override
  @JsonKey()
  final bool timeout;
  @override
  @JsonKey()
  final String approved_key;

  @override
  String toString() {
    return 'DiscountList(id: $id, image: $image, name: $name, max_order_value: $max_order_value, discount_value: $discount_value, discount_type_key: $discount_type_key, scope_object_key: $scope_object_key, amount: $amount, amount_used: $amount_used, description: $description, from_date: $from_date, to_date: $to_date, active: $active, type_id: $type_id, type_color: $type_color, type_code: $type_code, type_name: $type_name, timeout: $timeout, approved_key: $approved_key)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DiscountList &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.max_order_value, max_order_value) ||
                other.max_order_value == max_order_value) &&
            (identical(other.discount_value, discount_value) ||
                other.discount_value == discount_value) &&
            (identical(other.discount_type_key, discount_type_key) ||
                other.discount_type_key == discount_type_key) &&
            (identical(other.scope_object_key, scope_object_key) ||
                other.scope_object_key == scope_object_key) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.amount_used, amount_used) ||
                other.amount_used == amount_used) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.from_date, from_date) ||
                other.from_date == from_date) &&
            (identical(other.to_date, to_date) || other.to_date == to_date) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.type_id, type_id) || other.type_id == type_id) &&
            (identical(other.type_color, type_color) ||
                other.type_color == type_color) &&
            (identical(other.type_code, type_code) ||
                other.type_code == type_code) &&
            (identical(other.type_name, type_name) ||
                other.type_name == type_name) &&
            (identical(other.timeout, timeout) || other.timeout == timeout) &&
            (identical(other.approved_key, approved_key) ||
                other.approved_key == approved_key));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        image,
        name,
        max_order_value,
        discount_value,
        discount_type_key,
        scope_object_key,
        amount,
        amount_used,
        description,
        from_date,
        to_date,
        active,
        type_id,
        type_color,
        type_code,
        type_name,
        timeout,
        approved_key
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DiscountListCopyWith<_$_DiscountList> get copyWith =>
      __$$_DiscountListCopyWithImpl<_$_DiscountList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DiscountListToJson(
      this,
    );
  }
}

abstract class _DiscountList implements DiscountList {
  const factory _DiscountList(
      {final int id,
      final String image,
      final String name,
      final double max_order_value,
      final double discount_value,
      final String discount_type_key,
      final String scope_object_key,
      final int amount,
      final int amount_used,
      final String description,
      final DateTime? from_date,
      final DateTime? to_date,
      final bool active,
      final int type_id,
      final String type_color,
      final String type_code,
      final String type_name,
      final bool timeout,
      final String approved_key}) = _$_DiscountList;

  factory _DiscountList.fromJson(Map<String, dynamic> json) =
      _$_DiscountList.fromJson;

  @override
  int get id;
  @override
  String get image;
  @override
  String get name;
  @override
  double get max_order_value;
  @override
  double get discount_value;
  @override
  String get discount_type_key;
  @override
  String get scope_object_key;
  @override
  int get amount;
  @override
  int get amount_used;
  @override
  String get description;
  @override
  DateTime? get from_date;
  @override
  DateTime? get to_date;
  @override
  bool get active;
  @override
  int get type_id;
  @override
  String get type_color;
  @override
  String get type_code;
  @override
  String get type_name;
  @override
  bool get timeout;
  @override
  String get approved_key;
  @override
  @JsonKey(ignore: true)
  _$$_DiscountListCopyWith<_$_DiscountList> get copyWith =>
      throw _privateConstructorUsedError;
}
