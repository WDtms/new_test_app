// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Result<TData, TErr> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TData value) data,
    required TResult Function(TErr error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TData value)? data,
    TResult Function(TErr error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TData value)? data,
    TResult Function(TErr error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResultData<TData, TErr> value) data,
    required TResult Function(ResultError<TData, TErr> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ResultData<TData, TErr> value)? data,
    TResult Function(ResultError<TData, TErr> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResultData<TData, TErr> value)? data,
    TResult Function(ResultError<TData, TErr> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<TData, TErr, $Res> {
  factory $ResultCopyWith(
          Result<TData, TErr> value, $Res Function(Result<TData, TErr>) then) =
      _$ResultCopyWithImpl<TData, TErr, $Res>;
}

/// @nodoc
class _$ResultCopyWithImpl<TData, TErr, $Res>
    implements $ResultCopyWith<TData, TErr, $Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  final Result<TData, TErr> _value;
  // ignore: unused_field
  final $Res Function(Result<TData, TErr>) _then;
}

/// @nodoc
abstract class _$$ResultDataCopyWith<TData, TErr, $Res> {
  factory _$$ResultDataCopyWith(_$ResultData<TData, TErr> value,
          $Res Function(_$ResultData<TData, TErr>) then) =
      __$$ResultDataCopyWithImpl<TData, TErr, $Res>;
  $Res call({TData value});
}

/// @nodoc
class __$$ResultDataCopyWithImpl<TData, TErr, $Res>
    extends _$ResultCopyWithImpl<TData, TErr, $Res>
    implements _$$ResultDataCopyWith<TData, TErr, $Res> {
  __$$ResultDataCopyWithImpl(_$ResultData<TData, TErr> _value,
      $Res Function(_$ResultData<TData, TErr>) _then)
      : super(_value, (v) => _then(v as _$ResultData<TData, TErr>));

  @override
  _$ResultData<TData, TErr> get _value =>
      super._value as _$ResultData<TData, TErr>;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$ResultData<TData, TErr>(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as TData,
    ));
  }
}

/// @nodoc

class _$ResultData<TData, TErr> implements ResultData<TData, TErr> {
  const _$ResultData(this.value);

  @override
  final TData value;

  @override
  String toString() {
    return 'Result<$TData, $TErr>.data(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultData<TData, TErr> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$ResultDataCopyWith<TData, TErr, _$ResultData<TData, TErr>> get copyWith =>
      __$$ResultDataCopyWithImpl<TData, TErr, _$ResultData<TData, TErr>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TData value) data,
    required TResult Function(TErr error) error,
  }) {
    return data(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TData value)? data,
    TResult Function(TErr error)? error,
  }) {
    return data?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TData value)? data,
    TResult Function(TErr error)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResultData<TData, TErr> value) data,
    required TResult Function(ResultError<TData, TErr> value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ResultData<TData, TErr> value)? data,
    TResult Function(ResultError<TData, TErr> value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResultData<TData, TErr> value)? data,
    TResult Function(ResultError<TData, TErr> value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class ResultData<TData, TErr> implements Result<TData, TErr> {
  const factory ResultData(final TData value) = _$ResultData<TData, TErr>;

  TData get value;
  @JsonKey(ignore: true)
  _$$ResultDataCopyWith<TData, TErr, _$ResultData<TData, TErr>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResultErrorCopyWith<TData, TErr, $Res> {
  factory _$$ResultErrorCopyWith(_$ResultError<TData, TErr> value,
          $Res Function(_$ResultError<TData, TErr>) then) =
      __$$ResultErrorCopyWithImpl<TData, TErr, $Res>;
  $Res call({TErr error});
}

/// @nodoc
class __$$ResultErrorCopyWithImpl<TData, TErr, $Res>
    extends _$ResultCopyWithImpl<TData, TErr, $Res>
    implements _$$ResultErrorCopyWith<TData, TErr, $Res> {
  __$$ResultErrorCopyWithImpl(_$ResultError<TData, TErr> _value,
      $Res Function(_$ResultError<TData, TErr>) _then)
      : super(_value, (v) => _then(v as _$ResultError<TData, TErr>));

  @override
  _$ResultError<TData, TErr> get _value =>
      super._value as _$ResultError<TData, TErr>;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$ResultError<TData, TErr>(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as TErr,
    ));
  }
}

/// @nodoc

class _$ResultError<TData, TErr> implements ResultError<TData, TErr> {
  const _$ResultError(this.error);

  @override
  final TErr error;

  @override
  String toString() {
    return 'Result<$TData, $TErr>.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultError<TData, TErr> &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$ResultErrorCopyWith<TData, TErr, _$ResultError<TData, TErr>>
      get copyWith =>
          __$$ResultErrorCopyWithImpl<TData, TErr, _$ResultError<TData, TErr>>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TData value) data,
    required TResult Function(TErr error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TData value)? data,
    TResult Function(TErr error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TData value)? data,
    TResult Function(TErr error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResultData<TData, TErr> value) data,
    required TResult Function(ResultError<TData, TErr> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ResultData<TData, TErr> value)? data,
    TResult Function(ResultError<TData, TErr> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResultData<TData, TErr> value)? data,
    TResult Function(ResultError<TData, TErr> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ResultError<TData, TErr> implements Result<TData, TErr> {
  const factory ResultError(final TErr error) = _$ResultError<TData, TErr>;

  TErr get error;
  @JsonKey(ignore: true)
  _$$ResultErrorCopyWith<TData, TErr, _$ResultError<TData, TErr>>
      get copyWith => throw _privateConstructorUsedError;
}
