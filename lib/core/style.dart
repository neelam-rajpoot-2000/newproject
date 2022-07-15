import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:newproject/core/color_constants.dart';
class AppStyles {

  static TextStyle whiteSemiBoldFont =  TextStyle(
    fontFamily: "Segoe UI",
    color: ColorConstants.blackColor,
    fontWeight: FontWeight.w700,
    fontSize: 40,
   // height: 1.5,
    //letterSpacing: 1.5,
  );
  static TextStyle whiteBoldFont =  TextStyle(
    fontFamily: "Segoe UI",
    color: Colors.black38,
    fontWeight: FontWeight.w400,
    fontSize: 17,
    //letterSpacing: 1.5,
  );
  static TextStyle regularSmallFont = TextStyle(
    fontFamily: "Segoe UI",
    color: ColorConstants.blackColor,
    fontWeight: FontWeight.w600,
    fontSize: 25,
    //height: 1.5,
    //wordSpacing: 1.5,
  );
  static TextStyle regularBigFont = TextStyle(
    fontFamily: "Segoe UI",
    color: ColorConstants.whiteColor,
    fontWeight: FontWeight.w300,
    fontSize: 18,
    height: 1.8,
    wordSpacing: 1.5,
  );

  static TextStyle richText = TextStyle(
    fontFamily: "Segoe UI",
    color: ColorConstants.blackColor,
    fontWeight: FontWeight.bold,
    fontSize:18.0,
   // letterSpacing: 1.5,
  );

  static TextStyle spanText = TextStyle(
    fontFamily: "Segoe UI",
    color: ColorConstants.whiteColor,
    fontWeight: FontWeight.w200,
    fontSize: 12.0,
    // letterSpacing: 1.5,
  );

  static TextStyle verifyButtonText = TextStyle(
    fontFamily: "Segoe UI",
    color: ColorConstants.whiteColor,
    fontWeight: FontWeight.normal,
    fontSize: 20,
    //height: 1.5,
    wordSpacing: 1.5,
  );

  static TextStyle homeButtonText = TextStyle(
    fontFamily: "Segoe UI",
    color: ColorConstants.whiteColor,
    fontWeight: FontWeight.normal,
    fontSize: 20,
    //height: 1.5,
    wordSpacing: 1.5,
  );
}