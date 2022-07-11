import 'package:flutter/material.dart';
import 'package:newproject/core/color_constants.dart';
import 'package:newproject/core/string_constants.dart';
import 'package:newproject/core/validator.dart';
import 'package:newproject/google_facework.dart';
import 'package:newproject/login_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  var _formKey = GlobalKey<FormState>();
  var _passwordVisible;
  void initState() {
    _passwordVisible = false;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:SafeArea(
        child:  SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(StringConstants.signinText,style: TextStyle(color: Colors.blue,fontSize: 20,fontWeight: FontWeight.w500),),
                      SizedBox(width: 30,),
                      Text(StringConstants.loginText,style: TextStyle(color: ColorConstants.GreyColor,fontSize: 20,fontWeight: FontWeight.w500),),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Center(
                    child: Image.asset('assets/img_1.png',height: 170,width: 170,alignment: Alignment.center,fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(StringConstants.emailText,style: TextStyle(color: ColorConstants.DarkgreyColor,fontSize: 20,fontWeight: FontWeight.w600)),
                  SizedBox(height: 8,),
                  TextFormField(
                    controller: emailController,
                    validator: ValidatorHelper.validateEmailAddress,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.black12)
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text(StringConstants.passwordText,style: TextStyle(color: ColorConstants.DarkgreyColor,fontSize: 20,fontWeight: FontWeight.w600)),
                  SizedBox(height: 8,),
                  TextFormField(
                    controller: passwordController,
                    validator: ValidatorHelper.validatePassword,
                    obscureText: !_passwordVisible,
                    obscuringCharacter: "*",
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        color: Colors.black38,
                        icon: Icon(
                          _passwordVisible
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                          color: Color(0xFF20266e),
                        ),
                        onPressed: () {
                          setState(() {
                            _passwordVisible = !_passwordVisible;
                          });
                        },
                        iconSize: 25,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.black12)
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Icon(
                        Icons.check_box,size: 20,
                      ),
                      SizedBox(width: 3,),
                      Text(StringConstants.text,style: TextStyle(
                        color: Colors.black38,fontWeight: FontWeight.w700,fontSize: 17
                      ),),
                      Spacer(),
                      Text(StringConstants.forwardPasswordText,style: TextStyle(
                          color: Colors.black38,fontWeight: FontWeight.w400,fontSize: 17
                      ),),
                    ],
                  ),
                  SizedBox(height: 30,),
                  InkWell(
                    onTap: () {
                      if (_formKey.currentState!.validate())
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpScreen()));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(vertical: 15),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Center(
                    child: Text(StringConstants.orText,style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400
                    ),),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => WebViewScreen(
                                      url:
                                      'https://accounts.google.com/AddSession/signinchooser?service=accountsettings&continue=https%3A%2F%2Fmyaccount.google.com%2F%3Futm_source%3Dsign_in_no_continue%26pli%3D1&ec=GAlAwAE&flowName=GlifWebSignIn&flowEntry=AddSession',
                                    )));
                          },
                          child: Image.network('https://pbs.twimg.com/profile_images/1455185376876826625/s1AjSxph_400x400.jpg',height: 30,width: 30,fit: BoxFit.cover,)),
                      SizedBox(width: 40,),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => WebViewScreen(
                                      url: 'https://www.facebook.com/',
                                    )));
                          },
                          child: Image.network('https://pngimg.com/uploads/facebook_logos/facebook_logos_PNG19757.png',height: 30,width: 30,fit: BoxFit.cover,)),

                    ],
                  )


                ],
              ),
            ),
          ),
        ),
      ) ,
    );
  }
}
