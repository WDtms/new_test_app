// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaskModelValue _$$TaskModelValueFromJson(Map<String, dynamic> json) =>
    _$TaskModelValue(
      json['id'] as int,
      json['user_id'] as int,
      json['title'] as String,
      DateTime.parse(json['due_on'] as String),
      json['status'] as String,
    );

Map<String, dynamic> _$$TaskModelValueToJson(_$TaskModelValue instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'title': instance.title,
      'due_on': instance.timeToComplete.toIso8601String(),
      'status': instance.status,
    };
