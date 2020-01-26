import 'package:flutter/material.dart';

class FormItem extends StatelessWidget {
  final MaterialColor color;
  final FocusNode focusNode;
  final String label;
  final Function submit;
  final Function tap;
  final Function change;
  final Icon icon;
  final TextEditingController controller;
  final Function validator;
  final bool isValid;
  final String errorMsg;
  final Key key;

  FormItem({
    this.focusNode,
    @required this.color,
    @required this.label,
    this.submit,
    this.tap,
    this.change,
    @required this.icon,
    this.controller,
    this.validator,
    this.isValid = true,
    this.errorMsg,
    this.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Column(
          children: <Widget>[
            Align(
              alignment: Alignment.center,
              child: Container(
                color: color,
                height: 20,
                width: 3,
              ),
            ),
            CircleAvatar(
              backgroundColor: color,
              radius: 15,
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                color: color,
                height: 20,
                width: 3,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 50,
          width: 10,
        ),
        Column(
          children: <Widget>[
            AnimatedContainer(
              duration: Duration(milliseconds: 500),
              curve: Curves.linear,
              height: isValid ? 50 : 40,
              width: 280,
              padding: EdgeInsets.only(
                top: 10,
                bottom: 5,
                left: 10,
                right: 10,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  style: BorderStyle.solid,
                  color: Colors.black,
                ),
              ),
              child: TextFormField(
                focusNode: focusNode,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: label,
                  icon: icon,
                  hasFloatingPlaceholder: false,
                ),
                controller: controller,
                onTap: tap,
                // keyboardType: TextInputType.emailAddress,
                onFieldSubmitted: submit,
                onSaved: (value) {},
                validator: validator,
                // onEditingComplete: change,
              ),
            ),
            SizedBox(
              height: isValid ? 0 : 10,
              child: isValid
                  ? null
                  : Text(
                      '*$errorMsg',
                      style: TextStyle(
                        fontSize: 8,
                        color: Colors.red,
                      ),
                      textAlign: TextAlign.left,
                    ),
            ),
          ],
        ),
      ],
    );
  }
}
