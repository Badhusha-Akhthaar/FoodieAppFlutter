import 'package:flutter/material.dart';
import 'package:foodie/Screens/Register/components/FormComponents/textfieldcontainer.dart';

class TextFieldRounded extends StatelessWidget {
  final String hintText;
  final IconData iconData;
  final ValueChanged<String> onChanged;
  const TextFieldRounded({
    Key key,
    this.hintText,
    this.iconData,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldDecoration(
        child: TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder.none,
          icon: Icon(
            iconData,
            color: Color.fromRGBO(87, 75, 144, 1),
          )),
    ));
  }
}
