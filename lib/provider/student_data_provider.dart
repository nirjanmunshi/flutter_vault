import 'package:flutter/cupertino.dart';
import 'package:flutter_vault/model/student.dart';

class StudentDataProvider extends ChangeNotifier {
  List<Student> studentList = [];

  void addStudent(Student student) {
    studentList.add(student);
    notifyListeners();
  }
}
