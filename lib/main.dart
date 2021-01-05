import 'package:flutter/material.dart';
import 'package:welcome_app/Screens/Login/login_screen.dart';
import 'package:welcome_app/Screens/Signup/signup_screen.dart';
import 'package:welcome_app/Screens/Welcome/welcome_screen.dart';
import 'package:welcome_app/constants.dart';

void main() => runApp(MyApp());

class Routes {
  static const String screen1 = "/login";
  static const String screen2 = "/signup";
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: WelcomeScreen(),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case Routes.screen1:
            return MaterialPageRoute(builder: (_) => LoginScreen());

          case Routes.screen2:
            return MaterialPageRoute(builder: (_) => SignUpScreen());

          default:
            return MaterialPageRoute(builder: (_) => LoginScreen());
        }
      },
    );
  }
}
