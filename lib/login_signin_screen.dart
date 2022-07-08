import 'package:flutter/material.dart';

import 'login_screen.dart';
import 'signin_screen.dart';

class LoginSignUpScreen extends StatefulWidget {
  const LoginSignUpScreen({Key? key}) : super(key: key);

  @override
  State<LoginSignUpScreen> createState() => _LoginSignUpScreenState();
}

class _LoginSignUpScreenState extends State<LoginSignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        child: DefaultTabController(
          length: 2,
          child: Scaffold(
              body: SafeArea(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 80, horizontal: 20),
                  child: Column(
                    children: [
                      TabBar(
                        labelColor: Colors.lightBlueAccent,
                        unselectedLabelColor: Colors.grey,
                        labelPadding: EdgeInsets.all(5),
                        indicatorPadding: EdgeInsets.all(5),
                        labelStyle:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        tabs: [
                          Tab(text: "Sign Up"),
                          Tab(text: "Login"),
                        ],
                      ),
                      Expanded(
                        child:  TabBarView(
                          children: [
                            SignInScreen(),
                            SignUpScreen(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
