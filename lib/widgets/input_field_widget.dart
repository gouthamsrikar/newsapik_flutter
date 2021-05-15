import 'package:flutter/material.dart';

class Inputfieldwidget extends StatelessWidget {
  final String labelledtext;
  final TextInputType inputtype;
  final double nooflines;
  Inputfieldwidget(
      {@required this.labelledtext,
      @required this.inputtype,
      @required this.nooflines});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(labelText: labelledtext),
      maxLines: 3,
      textInputAction: TextInputAction.next,
      keyboardType: inputtype,
    );
  }
}
