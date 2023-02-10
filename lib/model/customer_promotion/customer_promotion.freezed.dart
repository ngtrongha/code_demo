// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_promotion.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CustomerPromotion _$CustomerPromotionFromJson(Map<String, dynamic> json) {
  return _CustomerPromotion.fromJson(json);
}

/// @nodoc
mixin _$CustomerPromotion {
  List<CustomerVoucherList> get customer_voucher_list =>
      throw _privateConstructorUsedError;
  int get total_count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerPromotionCopyWith<CustomerPromotion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerPromotionCopyWith<$Res> {
  factory $CustomerPromotionCopyWith(
          CustomerPromotion value, $Res Function(CustomerPromotion) then) =
      _$CustomerPromotionCopyWithImpl<$Res, CustomerPromotion>;
  @useResult
  $Res call({List<CustomerVoucherList> customer_voucher_list, int total_count});
}

/// @nodoc
class _$CustomerPromotionCopyWithImpl<$Res, $Val extends CustomerPromotion>
    implements $CustomerPromotionCopyWith<$Res> {
  _$CustomerPromotionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customer_voucher_list = null,
    Object? total_count = null,
  }) {
    return _then(_value.copyWith(
      customer_voucher_list: null == customer_voucher_list
          ? _value.customer_voucher_list
          : customer_voucher_list // ignore: cast_nullable_to_non_nullable
              as List<CustomerVoucherList>,
      total_count: null == total_count
          ? _value.total_count
          : total_count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CustomerPromotionCopyWith<$Res>
    implements $CustomerPromotionCopyWith<$Res> {
  factory _$$_CustomerPromotionCopyWith(_$_CustomerPromotion value,
          $Res Function(_$_CustomerPromotion) then) =
      __$$_CustomerPromotionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CustomerVoucherList> customer_voucher_list, int total_count});
}

/// @nodoc
class __$$_CustomerPromotionCopyWithImpl<$Res>
    extends _$CustomerPromotionCopyWithImpl<$Res, _$_CustomerPromotion>
    implements _$$_CustomerPromotionCopyWith<$Res> {
  __$$_CustomerPromotionCopyWithImpl(
      _$_CustomerPromotion _value, $Res Function(_$_CustomerPromotion) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customer_voucher_list = null,
    Object? total_count = null,
  }) {
    return _then(_$_CustomerPromotion(
      customer_voucher_list: null == customer_voucher_list
          ? _value._customer_voucher_list
          : customer_voucher_list // ignore: cast_nullable_to_non_nullable
              as List<CustomerVoucherList>,
      total_count: null == total_count
          ? _value.total_count
          : total_count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CustomerPromotion implements _CustomerPromotion {
  const _$_CustomerPromotion(
      {final List<CustomerVoucherList> customer_voucher_list = const [],
      this.total_count = 0})
      : _customer_voucher_list = customer_voucher_list;

  factory _$_CustomerPromotion.fromJson(Map<String, dynamic> json) =>
      _$$_CustomerPromotionFromJson(json);

  final List<CustomerVoucherList> _customer_voucher_list;
  @override
  @JsonKey()
  List<CustomerVoucherList> get customer_voucher_list {
    if (_customer_voucher_list is EqualUnmodifiableListView)
      return _customer_voucher_list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_customer_voucher_list);
  }

  @override
  @JsonKey()
  final int total_count;

  @override
  String toString() {
    return 'CustomerPromotion(customer_voucher_list: $customer_voucher_list, total_count: $total_count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CustomerPromotion &&
            const DeepCollectionEquality()
                .equals(other._customer_voucher_list, _customer_voucher_list) &&
            (identical(other.total_count, total_count) ||
                other.total_count == total_count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_customer_voucher_list), total_count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CustomerPromotionCopyWith<_$_CustomerPromotion> get copyWith =>
      __$$_CustomerPromotionCopyWithImpl<_$_CustomerPromotion>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CustomerPromotionToJson(
      this,
    );
  }
}

abstract class _CustomerPromotion implements CustomerPromotion {
  const factory _CustomerPromotion(
      {final List<CustomerVoucherList> customer_voucher_list,
      final int total_count}) = _$_CustomerPromotion;

  factory _CustomerPromotion.fromJson(Map<String, dynamic> json) =
      _$_CustomerPromotion.fromJson;

  @override
  List<CustomerVoucherList> get customer_voucher_list;
  @override
  int get total_count;
  @override
  @JsonKey(ignore: true)
  _$$_CustomerPromotionCopyWith<_$_CustomerPromotion> get copyWith =>
      throw _privateConstructorUsedError;
}

CustomerVoucherList _$CustomerVoucherListFromJson(Map<String, dynamic> json) {
  return _CustomerVoucherList.fromJson(json);
}

/// @nodoc
mixin _$CustomerVoucherList {
  int get id => throw _privateConstructorUsedError;
  int get booking_id => throw _privateConstructorUsedError;
  String get avatar => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  double get total_discount => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get status_text => throw _privateConstructorUsedError;
  String get status_color => throw _privateConstructorUsedError;
  DateTime? get create_date => throw _privateConstructorUsedError;
  DateTime? get used_date => throw _privateConstructorUsedError;
  DateTime? get status_date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerVoucherListCopyWith<CustomerVoucherList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerVoucherListCopyWith<$Res> {
  factory $CustomerVoucherListCopyWith(
          CustomerVoucherList value, $Res Function(CustomerVoucherList) then) =
      _$CustomerVoucherListCopyWithImpl<$Res, CustomerVoucherList>;
  @useResult
  $Res call(
      {int id,
      int booking_id,
      String avatar,
      String name,
      String phone,
      double total_discount,
      String email,
      String status,
      String status_text,
      String status_color,
      DateTime? create_date,
      DateTime? used_date,
      DateTime? status_date});
}

/// @nodoc
class _$CustomerVoucherListCopyWithImpl<$Res, $Val extends CustomerVoucherList>
    implements $CustomerVoucherListCopyWith<$Res> {
  _$CustomerVoucherListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? booking_id = null,
    Object? avatar = null,
    Object? name = null,
    Object? phone = null,
    Object? total_discount = null,
    Object? email = null,
    Object? status = null,
    Object? status_text = null,
    Object? status_color = null,
    Object? create_date = freezed,
    Object? used_date = freezed,
    Object? status_date = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      booking_id: null == booking_id
          ? _value.booking_id
          : booking_id // ignore: cast_nullable_to_non_nullable
              as int,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      total_discount: null == total_discount
          ? _value.total_discount
          : total_discount // ignore: cast_nullable_to_non_nullable
              as double,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      status_text: null == status_text
          ? _value.status_text
          : status_text // ignore: cast_nullable_to_non_nullable
              as String,
      status_color: null == status_color
          ? _value.status_color
          : status_color // ignore: cast_nullable_to_non_nullable
              as String,
      create_date: freezed == create_date
          ? _value.create_date
          : create_date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      used_date: freezed == used_date
          ? _value.used_date
          : used_date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status_date: freezed == status_date
          ? _value.status_date
          : status_date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CustomerVoucherListCopyWith<$Res>
    implements $CustomerVoucherListCopyWith<$Res> {
  factory _$$_CustomerVoucherListCopyWith(_$_CustomerVoucherList value,
          $Res Function(_$_CustomerVoucherList) then) =
      __$$_CustomerVoucherListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int booking_id,
      String avatar,
      String name,
      String phone,
      double total_discount,
      String email,
      String status,
      String status_text,
      String status_color,
      DateTime? create_date,
      DateTime? used_date,
      DateTime? status_date});
}

/// @nodoc
class __$$_CustomerVoucherListCopyWithImpl<$Res>
    extends _$CustomerVoucherListCopyWithImpl<$Res, _$_CustomerVoucherList>
    implements _$$_CustomerVoucherListCopyWith<$Res> {
  __$$_CustomerVoucherListCopyWithImpl(_$_CustomerVoucherList _value,
      $Res Function(_$_CustomerVoucherList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? booking_id = null,
    Object? avatar = null,
    Object? name = null,
    Object? phone = null,
    Object? total_discount = null,
    Object? email = null,
    Object? status = null,
    Object? status_text = null,
    Object? status_color = null,
    Object? create_date = freezed,
    Object? used_date = freezed,
    Object? status_date = freezed,
  }) {
    return _then(_$_CustomerVoucherList(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      booking_id: null == booking_id
          ? _value.booking_id
          : booking_id // ignore: cast_nullable_to_non_nullable
              as int,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      total_discount: null == total_discount
          ? _value.total_discount
          : total_discount // ignore: cast_nullable_to_non_nullable
              as double,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      status_text: null == status_text
          ? _value.status_text
          : status_text // ignore: cast_nullable_to_non_nullable
              as String,
      status_color: null == status_color
          ? _value.status_color
          : status_color // ignore: cast_nullable_to_non_nullable
              as String,
      create_date: freezed == create_date
          ? _value.create_date
          : create_date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      used_date: freezed == used_date
          ? _value.used_date
          : used_date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status_date: freezed == status_date
          ? _value.status_date
          : status_date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CustomerVoucherList implements _CustomerVoucherList {
  const _$_CustomerVoucherList(
      {this.id = -1,
      this.booking_id = -1,
      this.avatar = '',
      this.name = '',
      this.phone = '',
      this.total_discount = 0,
      this.email = '',
      this.status = '',
      this.status_text = '',
      this.status_color = '#FFFFFF',
      this.create_date,
      this.used_date,
      this.status_date});

  factory _$_CustomerVoucherList.fromJson(Map<String, dynamic> json) =>
      _$$_CustomerVoucherListFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final int booking_id;
  @override
  @JsonKey()
  final String avatar;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String phone;
  @override
  @JsonKey()
  final double total_discount;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String status;
  @override
  @JsonKey()
  final String status_text;
  @override
  @JsonKey()
  final String status_color;
  @override
  final DateTime? create_date;
  @override
  final DateTime? used_date;
  @override
  final DateTime? status_date;

  @override
  String toString() {
    return 'CustomerVoucherList(id: $id, booking_id: $booking_id, avatar: $avatar, name: $name, phone: $phone, total_discount: $total_discount, email: $email, status: $status, status_text: $status_text, status_color: $status_color, create_date: $create_date, used_date: $used_date, status_date: $status_date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CustomerVoucherList &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.booking_id, booking_id) ||
                other.booking_id == booking_id) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.total_discount, total_discount) ||
                other.total_discount == total_discount) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.status_text, status_text) ||
                other.status_text == status_text) &&
            (identical(other.status_color, status_color) ||
                other.status_color == status_color) &&
            (identical(other.create_date, create_date) ||
                other.create_date == create_date) &&
            (identical(other.used_date, used_date) ||
                other.used_date == used_date) &&
            (identical(other.status_date, status_date) ||
                other.status_date == status_date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      booking_id,
      avatar,
      name,
      phone,
      total_discount,
      email,
      status,
      status_text,
      status_color,
      create_date,
      used_date,
      status_date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CustomerVoucherListCopyWith<_$_CustomerVoucherList> get copyWith =>
      __$$_CustomerVoucherListCopyWithImpl<_$_CustomerVoucherList>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CustomerVoucherListToJson(
      this,
    );
  }
}

abstract class _CustomerVoucherList implements CustomerVoucherList {
  const factory _CustomerVoucherList(
      {final int id,
      final int booking_id,
      final String avatar,
      final String name,
      final String phone,
      final double total_discount,
      final String email,
      final String status,
      final String status_text,
      final String status_color,
      final DateTime? create_date,
      final DateTime? used_date,
      final DateTime? status_date}) = _$_CustomerVoucherList;

  factory _CustomerVoucherList.fromJson(Map<String, dynamic> json) =
      _$_CustomerVoucherList.fromJson;

  @override
  int get id;
  @override
  int get booking_id;
  @override
  String get avatar;
  @override
  String get name;
  @override
  String get phone;
  @override
  double get total_discount;
  @override
  String get email;
  @override
  String get status;
  @override
  String get status_text;
  @override
  String get status_color;
  @override
  DateTime? get create_date;
  @override
  DateTime? get used_date;
  @override
  DateTime? get status_date;
  @override
  @JsonKey(ignore: true)
  _$$_CustomerVoucherListCopyWith<_$_CustomerVoucherList> get copyWith =>
      throw _privateConstructorUsedError;
}
