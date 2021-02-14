import 'package:flutter/cupertino.dart';
import 'package:flutter_vault/model/student.dart';

class StudentDataProvider extends ChangeNotifier {
  List<Student> studentList = [];

  void addStudent(Student student) {
    studentList.add(student);
    notifyListeners();
  }

  int assignRollNumber() => studentList.isEmpty ? 1 : studentList.length + 1;

  void removeStudent(Student student) {
    studentList.remove(student);
    notifyListeners();
  }
}
