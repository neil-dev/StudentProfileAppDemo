import 'package:flutter/material.dart';
import './student_screen.dart';

class ClassScreen extends StatelessWidget {
  static const routeName = '/class';
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
        alignment: Alignment.topCenter,
        child: Container(
          width: 300,
          height: 700,
          // color: Colors.blue,
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 20,
                ),
                alignment: Alignment.centerRight,
                child: Icon(
                  Icons.settings,
                  color: Colors.grey,
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        border: Border.all(style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      padding: EdgeInsets.all(5),
                      child: CircleAvatar(
                        backgroundColor: Colors.blue,
                      ),
                    ),
                    Text('Hi Agent!'),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                // height: 350,
                // width: 300,
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  children: <Widget>[
                    InkWell(
                      child: SizedBox(
                        height: 100,
                        width: 100,
                        child: Card(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/images/pre_kg.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).pushNamed(StudentScreen.routeName);
                      },
                    ),
                    SizedBox(
                      height: 100,
                      width: 100,
                      child: Card(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/images/lkg.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 100,
                      width: 100,
                      child: Card(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/images/ukg.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 100,
                      width: 100,
                      child: Card(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/images/class1.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 100,
                      width: 100,
                      child: Card(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/images/class2.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 100,
                      width: 100,
                      child: Card(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/images/class3.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
