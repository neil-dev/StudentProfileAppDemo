import 'package:flutter/material.dart';
import '../widgets/form_field.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddStudentScreen extends StatefulWidget {
  @override
  _AddStudentScreenState createState() => _AddStudentScreenState();
}

class _AddStudentScreenState extends State<AddStudentScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey();

  final _nameController = TextEditingController();
  final _standardController = TextEditingController();
  final _fatherController = TextEditingController();
  final _contactController = TextEditingController();

  var field1Color = Colors.grey;
  var field2Color = Colors.grey;
  var field3Color = Colors.grey;
  var field4Color = Colors.grey;

  bool isValid1 = true;
  bool isValid2 = true;
  bool isValid3 = true;
  bool isValid4 = true;

  final _nameFocusNode = FocusNode();
  final _standardFocusNode = FocusNode();
  final _fatherFocusNode = FocusNode();
  final _contactFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 8.0,
          child: Container(
            height: 420,
            width: 400,
            padding: EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.grey,
                      ),
                      padding: EdgeInsets.all(15),
                      child: CircleAvatar(
                        radius: 35,
                        // child: Image.asset(name),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    FormItem(
                      // focusNode: _contactFocusNode,
                      // key: UniqueKey(),
                      focusNode: _nameFocusNode,
                      color: field1Color,
                      label: 'NAME',
                      isValid: isValid1,
                      errorMsg: 'Enter a name',
                      submit: (_) {
                        setState(() {
                          isValid1 = true;
                          if (_nameController.text.isEmpty ||
                              _nameController.text
                                  .contains(new RegExp(r'[0-9]'))) {
                            // field1Color = Colors.grey;
                            _nameController.text = '';
                            isValid1 = false;
                            FocusScope.of(context).requestFocus(_nameFocusNode);
                            return;
                          }
                          field2Color = Colors.blue;
                          FocusScope.of(context)
                              .requestFocus(_standardFocusNode);
                        });
                      },
                      // change: () {
                      //   setState(() {
                      //     isValid1 = true;
                      //     if (_nameController.text.isEmpty || _nameController.text
                      //             .contains(new RegExp(r'[0-9]'))) {
                      //       field1Color = Colors.grey;
                      //       _nameController.text = '';
                      //       isValid1 = false;
                      //     }
                      //     field2Color = Colors.blue;
                      //     FocusScope.of(context)
                      //         .requestFocus(_standardFocusNode);
                      //   });
                      // },
                      tap: () {
                        setState(() {
                          field1Color = Colors.blue;
                        });
                      },
                      icon: Icon(Icons.person),
                      controller: _nameController,
                    ),
                    FormItem(
                      // key: UniqueKey(),
                      focusNode: _standardFocusNode,
                      color: field2Color,
                      label: 'STANDARD',
                      isValid: isValid2,
                      errorMsg: 'Enter a standard(1-12)',
                      submit: (_) {
                        setState(() {
                          isValid2 = true;
                          final _text = _standardController.text;
                          final standard = int.tryParse(_text) ?? -1;
                          if (_standardController.text.isEmpty ||
                              standard == -1 ||
                              standard > 12 ||
                              standard < 1) {
                            // field2Color = Colors.grey;
                            _standardController.text = '';
                            isValid2 = false;
                            FocusScope.of(context)
                                .requestFocus(_standardFocusNode);
                            return;
                          }
                          field3Color = Colors.blue;
                          FocusScope.of(context).requestFocus(_fatherFocusNode);
                        });
                      },
                      tap: () {
                        setState(() {
                          field1Color = Colors.blue;
                        });
                      },
                      icon: Icon(Icons.person),
                      controller: _standardController,
                    ),
                    FormItem(
                      // key: UniqueKey(),
                      focusNode: _fatherFocusNode,
                      color: field3Color,
                      label: 'FATHER\'S NAME',
                      isValid: isValid3,
                      errorMsg: 'Enter a name',
                      submit: (_) {
                        setState(() {
                          isValid3 = true;
                          if (_fatherController.text.isEmpty ||
                              _fatherController.text
                                  .contains(new RegExp(r'[0-9]'))) {
                            // field3Color = Colors.grey;
                            _fatherController.text = '';
                            isValid3 = false;
                            FocusScope.of(context)
                                .requestFocus(_fatherFocusNode);
                            return;
                          }
                          field4Color = Colors.blue;
                          FocusScope.of(context)
                              .requestFocus(_contactFocusNode);
                        });
                      },
                      tap: () {
                        setState(() {
                          field3Color = Colors.blue;
                        });
                      },
                      icon: Icon(Icons.person),
                      controller: _fatherController,
                    ),
                    FormItem(
                      // key: UniqueKey(),
                      focusNode: _contactFocusNode,
                      color: field4Color,
                      label: 'CONTACT NUMBER',
                      isValid: isValid4,
                      errorMsg: 'Enter a 10-digit phone number',
                      submit: (_) {
                        setState(() {
                          isValid4 = true;
                          if (_contactController.text.isEmpty ||
                              _contactController.text.length != 10 ||
                              _contactController.text
                                  .contains(new RegExp(r'[A-Za-z]'))) {
                            // field4Color = Colors.grey;
                            _contactController.text = '';
                            isValid4 = false;
                            FocusScope.of(context)
                                .requestFocus(_contactFocusNode);
                            return;
                          }
                        });
                      },
                      tap: () {
                        setState(() {
                          field4Color = Colors.blue;
                        });
                      },
                      icon: Icon(Icons.call),
                      controller: _contactController,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    RaisedButton(
                      child: Text('SAVE'),
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 30.0, vertical: 8.0),
                      color: Theme.of(context).primaryColor,
                      textColor:
                          Theme.of(context).primaryTextTheme.button.color,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
