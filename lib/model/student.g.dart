// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Student _$_$_StudentFromJson(Map<String, dynamic> json) {
  return _$_Student(
    roll: json['id'] as int,
    name: json['name'] as String,
    subject: json['subject'] as String,
  );
}

Map<String, dynamic> _$_$_StudentToJson(_$_Student instance) =>
    <String, dynamic>{
      'id': instance.roll,
      'name': instance.name,
      'subject': instance.subject,
    };
