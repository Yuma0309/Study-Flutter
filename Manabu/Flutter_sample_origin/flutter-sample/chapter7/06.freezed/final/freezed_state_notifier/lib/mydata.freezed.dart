// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'mydata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MyData {
  double get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MyDataCopyWith<MyData> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyDataCopyWith<$Res> {
  factory $MyDataCopyWith(MyData value, $Res Function(MyData) then) =
      _$MyDataCopyWithImpl<$Res>;
  $Res call({double value});
}

/// @nodoc
class _$MyDataCopyWithImpl<$Res> implements $MyDataCopyWith<$Res> {
  _$MyDataCopyWithImpl(this._value, this._then);

  final MyData _value;
  // ignore: unused_field
  final $Res Function(MyData) _then;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_MyDataCopyWith<$Res> implements $MyDataCopyWith<$Res> {
  factory _$$_MyDataCopyWith(_$_MyData value, $Res Function(_$_MyData) then) =
      __$$_MyDataCopyWithImpl<$Res>;
  @override
  $Res call({double value});
}

/// @nodoc
class __$$_MyDataCopyWithImpl<$Res> extends _$MyDataCopyWithImpl<$Res>
    implements _$$_MyDataCopyWith<$Res> {
  __$$_MyDataCopyWithImpl(_$_MyData _value, $Res Function(_$_MyData) _then)
      : super(_value, (v) => _then(v as _$_MyData));

  @override
  _$_MyData get _value => super._value as _$_MyData;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_MyData(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_MyData implements _MyData {
  const _$_MyData({this.value = 0.5});

  @override
  @JsonKey()
  final double value;

  @override
  String toString() {
    return 'MyData(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MyData &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_MyDataCopyWith<_$_MyData> get copyWith =>
      __$$_MyDataCopyWithImpl<_$_MyData>(this, _$identity);
}

abstract class _MyData implements MyData {
  const factory _MyData({final double value}) = _$_MyData;

  @override
  double get value;
  @override
  @JsonKey(ignore: true)
  _$$_MyDataCopyWith<_$_MyData> get copyWith =>
      throw _privateConstructorUsedError;
}
