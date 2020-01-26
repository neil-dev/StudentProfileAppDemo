import 'package:flutter/material.dart';
import './screens/login_screen.dart';
import './screens/registration_form_screen.dart';
import './screens/add_student_screen.dart';
// import './screens//login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Web App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: LoginScreen(),
      // home: AddStudentScreen(),
      home: RegistrationFormScreen(),
      // home: Center(child: Text('Home'),),
    );
  }
}
