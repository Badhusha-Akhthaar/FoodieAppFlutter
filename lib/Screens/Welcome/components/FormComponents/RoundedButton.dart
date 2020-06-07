import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function pressFunction;
  final Color bgColor, textColor;
  const RoundedButton(
      {Key key, this.text, this.pressFunction, this.bgColor, this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: FlatButton(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          color: bgColor,
          onPressed: pressFunction,
          child: Text(
            text,
            style: TextStyle(color: textColor),
          ),
        ),
      ),
    );
  }
}
