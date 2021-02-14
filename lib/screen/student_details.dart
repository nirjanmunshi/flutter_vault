import 'package:flutter/material.dart';
import 'package:flutter_vault/model/student.dart';
import 'package:flutter_vault/provider/student_data_provider.dart';
import 'package:provider/provider.dart';

class StudentDetails extends StatelessWidget {
  final _nameController = TextEditingController();
  final _subjectController = TextEditingController();
  final _studentFormKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var dProvider = Provider.of<StudentDataProvider>(context);
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
    if (name.isNotEmpty && subject.isNotEmpty) {
      provider.addStudent(Student(name: name, subject: subject));
      Navigator.pop(_);
    }
    // if (_studentFormKey.currentState.validate()) {

    // } else {
    //   print('error');
    // }
  }
}
