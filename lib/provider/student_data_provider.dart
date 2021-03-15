import 'package:flutter/cupertino.dart';
import 'package:flutter_vault/model/student.dart';

class StudentDataProvider extends ChangeNotifier {
  List<Student> studentList = [];

  void addStudent(Student student) {
    studentList.add(student);
    sortList();
    notifyListeners();
  }

  void updateStudent({Student previous, Student updated}) {
    removeStudent(previous);
    addStudent(updated);
    sortList();
  }

  void sortList() {
    studentList.sort((a, b) => a.roll.compareTo(b.roll));
  }

  int assignRollNumber() =>
      studentList.isEmpty ? 1 : getNextAvailableRollNumber();

  int getNextAvailableRollNumber() {
    List<int> rollList = studentList.map((e) => e.roll).toList();

    // max roll number is rollList.last
    var list = new List<int>.generate(rollList.last, (i) => i + 1);
    List<int> subtractedList = [];

    for (var item in list) {
      if (!rollList.contains(item)) {
        subtractedList.add(item);
      }
    }

    return (subtractedList.isEmpty) ? rollList.last + 1 : subtractedList.first;
  }

  void removeStudent(Student student) {
    studentList.remove(student);
    notifyListeners();
  }
}
