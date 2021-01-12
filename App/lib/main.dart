import 'package:flutter/material.dart';
import 'package:flutter_onboarding_ui/screens/home.dart';
import 'package:flutter_onboarding_ui/screens/onboarding_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Onboarding UI',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (BuildContext context){return OnboardingScreen();},
        '/home': (BuildContext context){return Home();},
      },
    );
  }
}