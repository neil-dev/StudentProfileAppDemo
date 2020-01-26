import 'package:flutter/material.dart';
import './add_student_screen.dart';

class StudentScreen extends StatelessWidget {
  static const routeName = '/student';
  @override
  Widget build(BuildContext context) {
    final double rad = 80;
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
        alignment: Alignment.topCenter,
        child: Container(
          alignment: Alignment.topLeft,
          width: 450,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.add_circle_outline,
                        color: Colors.grey[700],
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamed(AddStudentScreen.routeName);
                      },
                      iconSize: 100,
                    ),
                    Text(
                      'ADD STUDENT',
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 2,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      const Color(0x00c1c1c1),
                      Colors.grey[600],
                      Colors.grey[600],
                      const Color(0x00c1c1c1),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.topRight,
                    stops: [0.0, 0.25, 0.75, 1.0],
                    // tileMode: TileMode.repeated,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Wrap(
                children: <Widget>[
                  StudentAvatar(name: 'Sunile'),
                  StudentAvatar(name: 'Chiranjeevi'),
                  StudentAvatar(name: 'Venkatesh'),
                  StudentAvatar(name: 'Srikanth'),
                  StudentAvatar(name: 'Reka'),
                  StudentAvatar(name: 'Armin'),
                  StudentAvatar(name: 'Mango'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class StudentAvatar extends StatelessWidget {
  const StudentAvatar({
    Key key,
    @required this.name
  }) : super(key: key);

  final double rad = 80;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(10),
            height: rad,
            width: rad,
            decoration: BoxDecoration(
              border: Border.all(style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(rad / 2),
            ),
            padding: EdgeInsets.all(10),
            child: CircleAvatar(
              backgroundColor: Colors.blue,
            ),
          ),
          Text(name),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
