import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodie/Screens/Login/loginScreen.dart';
import 'package:foodie/Screens/Register/registerScreen.dart';
import 'package:foodie/Screens/Welcome/components/FormComponents/RoundedButton.dart';
import 'package:foodie/Screens/Welcome/components/background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BackGround(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Foodie',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(87, 75, 144, 1),
                  fontSize: 26,
                  fontFamily: 'Pacifico'),
            ),
            Text(
              'COOK . CAPTURE . POST',
              style: TextStyle(
                color: Color.fromRGBO(87, 75, 144, 1),
                fontSize: 7,
              ),
            ),
            SizedBox(height: size.height * 0.07),
            Image.asset(
              'assets/images/woman_cooking.jpg',
              height: size.height * 0.4,
            ),
            SizedBox(height: size.height * 0.07),
            RoundedButton(
              text: 'LOGIN',
              pressFunction: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
              bgColor: Color.fromRGBO(87, 75, 144, 1),
              textColor: Colors.white,
            ),
            RoundedButton(
              text: 'REGISTER',
              pressFunction: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return RegisterScreen();
                    },
                  ),
                );
              },
              bgColor: Color.fromRGBO(120, 111, 166, 1),
              textColor: Colors.white, //Color.fromRGBO(41, 41, 41, 1),
            )
          ],
        ),
      ),
    );
  }
}
