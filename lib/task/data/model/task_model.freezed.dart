// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'task_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TaskModel _$TaskModelFromJson(Map<String, dynamic> json) {
  return TaskModelValue.fromJson(json);
}

/// @nodoc
mixin _$TaskModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'due_on')
  DateTime get timeToComplete => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskModelCopyWith<TaskModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskModelCopyWith<$Res> {
  factory $TaskModelCopyWith(TaskModel value, $Res Function(TaskModel) then) =
      _$TaskModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      @JsonKey(name: 'user_id') int userId,
      String title,
      @JsonKey(name: 'due_on') DateTime timeToComplete,
      String status});
}

/// @nodoc
class _$TaskModelCopyWithImpl<$Res> implements $TaskModelCopyWith<$Res> {
  _$TaskModelCopyWithImpl(this._value, this._then);

  final TaskModel _value;
  // ignore: unused_field
  final $Res Function(TaskModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? title = freezed,
    Object? timeToComplete = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      timeToComplete: timeToComplete == freezed
          ? _value.timeToComplete
          : timeToComplete // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$TaskModelValueCopyWith<$Res>
    implements $TaskModelCopyWith<$Res> {
  factory _$$TaskModelValueCopyWith(
          _$TaskModelValue value, $Res Function(_$TaskModelValue) then) =
      __$$TaskModelValueCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      @JsonKey(name: 'user_id') int userId,
      String title,
      @JsonKey(name: 'due_on') DateTime timeToComplete,
      String status});
}

/// @nodoc
class __$$TaskModelValueCopyWithImpl<$Res> extends _$TaskModelCopyWithImpl<$Res>
    implements _$$TaskModelValueCopyWith<$Res> {
  __$$TaskModelValueCopyWithImpl(
      _$TaskModelValue _value, $Res Function(_$TaskModelValue) _then)
      : super(_value, (v) => _then(v as _$TaskModelValue));

  @override
  _$TaskModelValue get _value => super._value as _$TaskModelValue;

  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? title = freezed,
    Object? timeToComplete = freezed,
    Object? status = freezed,
  }) {
    return _then(_$TaskModelValue(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      timeToComplete == freezed
          ? _value.timeToComplete
          : timeToComplete // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TaskModelValue implements TaskModelValue {
  const _$TaskModelValue(this.id, @JsonKey(name: 'user_id') this.userId,
      this.title, @JsonKey(name: 'due_on') this.timeToComplete, this.status);

  factory _$TaskModelValue.fromJson(Map<String, dynamic> json) =>
      _$$TaskModelValueFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'user_id')
  final int userId;
  @override
  final String title;
  @override
  @JsonKey(name: 'due_on')
  final DateTime timeToComplete;
  @override
  final String status;

  @override
  String toString() {
    return 'TaskModel(id: $id, userId: $userId, title: $title, timeToComplete: $timeToComplete, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskModelValue &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.timeToComplete, timeToComplete) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(timeToComplete),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$$TaskModelValueCopyWith<_$TaskModelValue> get copyWith =>
      __$$TaskModelValueCopyWithImpl<_$TaskModelValue>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaskModelValueToJson(
      this,
    );
  }
}

abstract class TaskModelValue implements TaskModel {
  const factory TaskModelValue(
      final int id,
      @JsonKey(name: 'user_id') final int userId,
      final String title,
      @JsonKey(name: 'due_on') final DateTime timeToComplete,
      final String status) = _$TaskModelValue;

  factory TaskModelValue.fromJson(Map<String, dynamic> json) =
      _$TaskModelValue.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'user_id')
  int get userId;
  @override
  String get title;
  @override
  @JsonKey(name: 'due_on')
  DateTime get timeToComplete;
  @override
  String get status;
  @override
  @JsonKey(ignore: true)
  _$$TaskModelValueCopyWith<_$TaskModelValue> get copyWith =>
      throw _privateConstructorUsedError;
}
