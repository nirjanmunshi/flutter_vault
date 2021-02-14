import 'package:freezed_annotation/freezed_annotation.dart';

part 'student.freezed.dart';
part 'student.g.dart';

@freezed
abstract class Student with _$Student {
  const factory Student({
    @required @JsonKey(name: 'id') int roll,
    @required @JsonKey(name: 'name') String name,
    @required @JsonKey(name: 'subject') String subject,
  }) = _Student;

  factory Student.fromJson(Map<String, dynamic> json) =>
      _$StudentFromJson(json);
}
