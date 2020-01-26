import 'package:flutter/material.dart';
import './screens/login_screen.dart';
import './screens/registration_form_screen.dart';
import './screens/add_student_screen.dart';
import './screens/student_screen.dart';
import './screens/class_screen.dart';
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
      // home: ClassScreen(),
      // home: StudentScreen(),
      // home: LoginScreen(),
      // home: AddStudentScreen(),
      // home: RegistrationFormScreen(),
      // home: Center(child: Text('Home'),),
      routes: {
        LoginScreen.routeName: (ctx) => LoginScreen(),
        RegistrationFormScreen.routeName: (ctx) => RegistrationFormScreen(),
        AddStudentScreen.routeName: (ctx) => AddStudentScreen(),
        ClassScreen.routeName: (ctx) => ClassScreen(),
        StudentScreen.routeName: (ctx) => StudentScreen(),
      },
    );
  }
}
