import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodie/Screens/Register/components/FormComponents/RoundedButton.dart';
import 'package:foodie/Screens/Register/components/FormComponents/passwordfieldrounded.dart';
import 'package:foodie/Screens/Register/components/FormComponents/textfieldrounded.dart';
import 'package:foodie/Screens/Register/components/background.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BackGround(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.04),
            Text(
              'Foodie',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(87, 75, 144, 1),
                  fontSize: 26,
                  fontFamily: 'Pacifico'),
            ),
            SizedBox(height: size.height * 0.02),
            Image.asset(
              'assets/images/man_cook.jpg',
              height: size.height * 0.4,
            ),
            SizedBox(height: size.height * 0.03),
            TextFieldRounded(
              hintText: 'Email',
              iconData: Icons.person,
              onChanged: (value) {},
            ),
            PasswordFieldRounded(
              hintText: 'Password',
              iconData: Icons.lock,
              onChanged: (value) {},
            ),
            RoundedButton(
              text: 'REGISTER',
              textColor: Colors.white,
              bgColor: Color.fromRGBO(87, 75, 144, 1),
              pressFunction: () {},
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Already have account ?  ',
                  style: TextStyle(
                    color: Color.fromRGBO(87, 75, 144, 1),
                  ),
                ),
                GestureDetector(
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(87, 75, 144, 1),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
