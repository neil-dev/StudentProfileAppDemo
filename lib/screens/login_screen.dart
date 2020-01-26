import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widgets/registration_item.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _loginKey = GlobalKey();
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
            Text('LOGIN PAGE'),
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
                RaisedButton(
                  child: Text(
                    'LOG IN',
                    style: TextStyle(fontSize: 11),
                  ),
                  color: Colors.blue[600],
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
