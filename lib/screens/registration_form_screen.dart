import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './login_screen.dart';
import './class_screen.dart';
import '../widgets/registration_item.dart';

class RegistrationFormScreen extends StatefulWidget {
  static const routeName = '/register';
  @override
  _RegistrationFormScreenState createState() => _RegistrationFormScreenState();
}

class _RegistrationFormScreenState extends State<RegistrationFormScreen> {

  final GlobalKey<FormState> _registrationKey = GlobalKey();

  final _passwordController = TextEditingController();
  final _emailController = TextEditingController();

  bool isEmailValid = true;

  String dropdownValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(20),
                height: 80,
                width: 80,
                alignment: Alignment.center,
                // color: Colors.red,
                child: Image.asset(
                  'assets/images/logo.png',
                  fit: BoxFit.cover,
                ),
                // child: Text('Hello'),
              ),
              Center(
                child: Text(
                  'ACCOUNT',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Center(
                child: Text(
                  'REGISTRATION',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 600,
                width: 400,
                child: Form(
                  key: _registrationKey,
                  child: Column(
                    children: <Widget>[
                      RegistrationItem(
                        icon: Icon(Icons.school),
                        label: 'SCHOOL NAME',
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      RegistrationItem(
                        icon: Icon(Icons.home),
                        label: 'ADDRESS',
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      RegistrationItem(
                        icon: Icon(Icons.email),
                        label: 'E-MAIL ID',
                        controller: _emailController,
                        errorMsg: 'Enter valid email',
                        isValid: isEmailValid,
                        submit: (_) {
                        setState(() {
                          isEmailValid = true;
                          if (_emailController.text.isEmpty ||
                              !_emailController.text
                                  .contains('@')) {
                            _emailController.text = '';
                            isEmailValid = false;
                            return;
                          }
                        });
                      },
                      ),
                      RegistrationItem(
                        icon: Icon(Icons.vpn_key),
                        label: 'PASSWORD ',
                        controller: _passwordController,
                      ),
                      RegistrationItem(
                        icon: Icon(Icons.keyboard_return),
                        label: 'RE-ENTER PASSWORD',
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RegistrationItem(
                            icon: Icon(Icons.person),
                            label: 'NAME',
                            width: 130,
                          ),
                          Container(
                            height: 50,
                            width: 130,
                            padding: EdgeInsets.only(
                              top: 10,
                              bottom: 5,
                              left: 10,
                              right: 10,
                            ),
                            margin: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 5,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                style: BorderStyle.solid,
                                color: Colors.grey,
                              ),
                            ),
                            child: FittedBox(
                              child: DropdownButton<String>(
                                value: dropdownValue,
                                hint: Text('SELECT DESIGNATION'),
                                icon: Icon(Icons.keyboard_arrow_down),
                                onChanged: (String newValue) {
                                  setState(() {
                                    dropdownValue = newValue;
                                  });
                                },
                                items: <String>[
                                  'CEO',
                                  'TEACHER',
                                  'POLICE',
                                  'POLITICIAN'
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      RegistrationItem(
                        icon: Icon(Icons.call),
                        label: 'MOBILE NUMBER',
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RaisedButton(
                            child: Text(
                              'REGISTER',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            color: Colors.red,
                            onPressed: () {
                              Navigator.of(context).pushReplacementNamed(ClassScreen.routeName);
                            },
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                height: 15,
                                child: Text(
                                  'ALREADY REGISTERED?',
                                  style: TextStyle(
                                    color: Colors.blue[900],
                                    fontSize: 11,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 15,
                                child: FlatButton(
                                  child: Text(
                                    'CLICK HERE',
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 11,
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).pushReplacementNamed(LoginScreen.routeName);
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
