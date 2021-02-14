// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'student.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Student _$StudentFromJson(Map<String, dynamic> json) {
  return _Student.fromJson(json);
}

/// @nodoc
class _$StudentTearOff {
  const _$StudentTearOff();

// ignore: unused_element
  _Student call(
      {@required @JsonKey(name: 'id') int roll,
      @required @JsonKey(name: 'name') String name,
      @required @JsonKey(name: 'subject') String subject}) {
    return _Student(
      roll: roll,
      name: name,
      subject: subject,
    );
  }

// ignore: unused_element
  Student fromJson(Map<String, Object> json) {
    return Student.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Student = _$StudentTearOff();

/// @nodoc
mixin _$Student {
  @JsonKey(name: 'id')
  int get roll;
  @JsonKey(name: 'name')
  String get name;
  @JsonKey(name: 'subject')
  String get subject;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $StudentCopyWith<Student> get copyWith;
}

/// @nodoc
abstract class $StudentCopyWith<$Res> {
  factory $StudentCopyWith(Student value, $Res Function(Student) then) =
      _$StudentCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') int roll,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'subject') String subject});
}

/// @nodoc
class _$StudentCopyWithImpl<$Res> implements $StudentCopyWith<$Res> {
  _$StudentCopyWithImpl(this._value, this._then);

  final Student _value;
  // ignore: unused_field
  final $Res Function(Student) _then;

  @override
  $Res call({
    Object roll = freezed,
    Object name = freezed,
    Object subject = freezed,
  }) {
    return _then(_value.copyWith(
      roll: roll == freezed ? _value.roll : roll as int,
      name: name == freezed ? _value.name : name as String,
      subject: subject == freezed ? _value.subject : subject as String,
    ));
  }
}

/// @nodoc
abstract class _$StudentCopyWith<$Res> implements $StudentCopyWith<$Res> {
  factory _$StudentCopyWith(_Student value, $Res Function(_Student) then) =
      __$StudentCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') int roll,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'subject') String subject});
}

/// @nodoc
class __$StudentCopyWithImpl<$Res> extends _$StudentCopyWithImpl<$Res>
    implements _$StudentCopyWith<$Res> {
  __$StudentCopyWithImpl(_Student _value, $Res Function(_Student) _then)
      : super(_value, (v) => _then(v as _Student));

  @override
  _Student get _value => super._value as _Student;

  @override
  $Res call({
    Object roll = freezed,
    Object name = freezed,
    Object subject = freezed,
  }) {
    return _then(_Student(
      roll: roll == freezed ? _value.roll : roll as int,
      name: name == freezed ? _value.name : name as String,
      subject: subject == freezed ? _value.subject : subject as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Student implements _Student {
  const _$_Student(
      {@required @JsonKey(name: 'id') this.roll,
      @required @JsonKey(name: 'name') this.name,
      @required @JsonKey(name: 'subject') this.subject})
      : assert(roll != null),
        assert(name != null),
        assert(subject != null);

  factory _$_Student.fromJson(Map<String, dynamic> json) =>
      _$_$_StudentFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int roll;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'subject')
  final String subject;

  @override
  String toString() {
    return 'Student(roll: $roll, name: $name, subject: $subject)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Student &&
            (identical(other.roll, roll) ||
                const DeepCollectionEquality().equals(other.roll, roll)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.subject, subject) ||
                const DeepCollectionEquality().equals(other.subject, subject)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(roll) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(subject);

  @JsonKey(ignore: true)
  @override
  _$StudentCopyWith<_Student> get copyWith =>
      __$StudentCopyWithImpl<_Student>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_StudentToJson(this);
  }
}

abstract class _Student implements Student {
  const factory _Student(
      {@required @JsonKey(name: 'id') int roll,
      @required @JsonKey(name: 'name') String name,
      @required @JsonKey(name: 'subject') String subject}) = _$_Student;

  factory _Student.fromJson(Map<String, dynamic> json) = _$_Student.fromJson;

  @override
  @JsonKey(name: 'id')
  int get roll;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'subject')
  String get subject;
  @override
  @JsonKey(ignore: true)
  _$StudentCopyWith<_Student> get copyWith;
}
