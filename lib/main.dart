import 'package:flutter/material.dart';
import 'package:flutter_vault/provider/student_data_provider.dart';
import 'package:flutter_vault/screen/student_details.dart';
import 'package:flutter_vault/screen/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<StudentDataProvider>(
          create: (context) => StudentDataProvider(),
          lazy: false,
        )
      ],
      child: MaterialApp(
        title: 'Flutter Vault',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/home',
        routes: {
          '/home': (_) => Home(),
          '/addStudent': (_) => StudentDetails(),
        },
      ),
    );
  }
}
