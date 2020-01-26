import 'package:flutter/material.dart';
import './registration_form_screen.dart';
import './class_screen.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widgets/registration_item.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = '/';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _loginKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        key: UniqueKey(),
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                const Color(0xffc1c1c1),
                const Color(0xffffffff),
              ],
              tileMode: TileMode.repeated),
        ),
        alignment: Alignment.topCenter,
        child: Container(
          height: 700,
          width: 350,
          padding: EdgeInsets.all(15),
          // decoration: BoxDecoration(
          //   border: Border.all(
          //     color: Colors.black,
          //     width: 1,
          //   ),
          // color: Colors.blue,
          // ),
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(20),
                height: 80,
                width: 80,
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/images/logo.png',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 120,
              ),
              Align(
                alignment: Alignment(-0.75, 0.0),
                child: Text(
                  'LOGIN PAGE',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Form(
                key: _loginKey,
                child: Column(
                  children: <Widget>[
                    RegistrationItem(
                      icon: Icon(Icons.person),
                      label: 'EMAIL ID',
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    RegistrationItem(
                      icon: Icon(Icons.vpn_key),
                      label: 'PASSWORD',
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                    child: Text(
                      'FORGOT PASSWORD',
                      style: TextStyle(
                        fontSize: 11,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    onPressed: () {},
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  RaisedButton(
                    child: Text(
                      'LOG IN',
                      style: TextStyle(
                        fontSize: 11,
                        color: Colors.white,
                      ),
                    ),
                    color: Colors.blue[600],
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed(ClassScreen.routeName);
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 120,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: RaisedButton(
                  child: Text(
                    'REGISTER',
                    style: TextStyle(
                      fontSize: 11,
                      color: Colors.white,
                    ),
                  ),
                  color: Colors.red,
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed(RegistrationFormScreen.routeName);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
