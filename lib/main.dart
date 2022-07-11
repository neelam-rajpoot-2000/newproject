import 'package:flutter/material.dart';
import 'package:newproject/profile.dart';
import 'package:newproject/profile_screen.dart';
import 'package:newproject/setting_screen.dart';
import 'package:newproject/signin_screen.dart';

import 'login_signin_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  SettingScreen(),
    );
  }
}

