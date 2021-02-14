import 'package:flutter/material.dart';
import 'package:flutter_vault/provider/student_data_provider.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.pushNamed(context, '/addStudent');
        },
      ),
      body: Container(child: Consumer<StudentDataProvider>(
        builder: (context, provider, child) {
          return provider.studentList.isNotEmpty
              ? ListView.builder(
                  itemCount: provider.studentList.length,
                  itemBuilder: (context, index) {
                    var student = provider.studentList[index];
                    return Dismissible(
                      key: Key(student.roll.toString()),
                      onDismissed: (direction) {
                        provider.removeStudent(student);
                      },
                      background: Container(color: Colors.red),
                      child: ListTile(
                        title: Text(student.name),
                        subtitle:
                            Text('Favorite subject is ${student.subject}'),
                        leading: CircleAvatar(
                          child: Text(student.roll.toString()),
                        ),
                      ),
                    );
                  },
                )
              : emptyListWidget();
        },
      )),
    );
  }

  // when there are no items present in the list. This will be shown to user
  Widget emptyListWidget() {
    return Center(
        child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        'No student found. \nClick on the + button to add a new student',
        textAlign: TextAlign.center,
      ),
    ));
  }
}
