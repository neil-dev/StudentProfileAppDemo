import 'package:flutter/material.dart';

class RegistrationItem extends StatelessWidget {
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
  final double width;

  RegistrationItem({
    this.width = 280,
    this.focusNode,
    @required this.label,
    this.submit,
    this.tap,
    this.change,
    @required this.icon,
    this.controller,
    this.validator,
    this.isValid = true,
    this.errorMsg,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        AnimatedContainer(
          duration: Duration(milliseconds: 500),
          curve: Curves.linear,
          height: isValid ? 50 : 40,
          width: width,
          padding: EdgeInsets.only(
            top: 10,
            bottom: 5,
            left: 10,
            right: 10,
          ),
          margin: EdgeInsets.symmetric(
            vertical: 2,
            horizontal: 5,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
              style: BorderStyle.solid,
              color: Colors.grey,
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
            controller:
                controller == null ? TextEditingController() : controller,
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
    );
  }
}
