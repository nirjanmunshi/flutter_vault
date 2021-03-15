import 'package:flutter/material.dart';
import 'package:flutter_vault/model/student.dart';
import 'package:flutter_vault/provider/student_data_provider.dart';
import 'package:provider/provider.dart';

class StudentDetails extends StatelessWidget {
  final Student student;
  StudentDetails({Key key, @required this.student}) : super(key: key);

  final _nameController = TextEditingController();
  final _subjectController = TextEditingController();
  final _studentFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var dProvider = Provider.of<StudentDataProvider>(context);
    _nameController.text = student?.name ?? '';
    _subjectController.text = student?.subject ?? '';

    return Scaffold(
      appBar: AppBar(
        title: Text('Student Details'),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          _save(context, dProvider);
        },
        label: Text('Save'),
        icon: Icon(Icons.check_rounded),
      ),
      body: Form(
        key: _studentFormKey,
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextFormField(
                textInputAction: TextInputAction.next,
                controller: _nameController,
                decoration: InputDecoration(
                  isDense: true,
                  labelText: 'Name',
                  hintText: 'Name as per your id',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                    borderSide: BorderSide(color: Colors.grey, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                    borderSide: BorderSide(color: Colors.blue, width: 2),
                  ),
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Required';
                  }
                  return '';
                },
              ),
              SizedBox(
                height: 16.0,
              ),
              TextFormField(
                textInputAction: TextInputAction.next,
                controller: _subjectController,
                decoration: InputDecoration(
                  isDense: true,
                  labelText: 'Subject',
                  hintText: 'Enter your favorite subject',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                    borderSide: BorderSide(color: Colors.grey, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                    borderSide: BorderSide(color: Colors.blue, width: 2),
                  ),
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Required';
                  }
                  return '';
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _save(BuildContext _, StudentDataProvider provider) {
    var name = _nameController.text.trim();
    var subject = _subjectController.text.trim();
    // if student roll = -1 then add as new student
    // if not then update existing student

    if (name.isNotEmpty && subject.isNotEmpty) {
      if (student.roll == -1) {
        provider.addStudent(Student(
            roll: provider.assignRollNumber(), name: name, subject: subject));
      } else {
        provider.updateStudent(
            previous: student,
            updated: Student(roll: student.roll, name: name, subject: subject));
      }
      Navigator.pop(_);
    }
  }
}
