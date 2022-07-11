import 'package:flutter/material.dart';
import 'package:newproject/core/color_constants.dart';
import 'package:newproject/core/icon_constants.dart';
import 'package:newproject/core/string_constants.dart';
import 'package:newproject/core/style.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.whiteColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    IconConstants.backware,
                    height: 30,
                    width: 30,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    StringConstants.settingText,
                    style: AppStyles.whiteSemiBoldFont,
                  )
                ],
              ),
              SizedBox(height: 20,),
              Expanded(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  children: [
                    _buildCardViewWidget(
                      title: StringConstants.changePinText,
                      imgUrl: IconConstants.card,
                      icon: IconConstants.arrowForward,
                    ),
                    _buildCardViewWidget(
                      title: StringConstants.changePasswordText,
                      imgUrl: IconConstants.card,
                      icon: IconConstants.arrowForward,
                    ),
                    _buildCardViewWidget(
                      title: StringConstants.loginText,
                      imgUrl: IconConstants.setting,
                      icon: IconConstants.arrowForward,
                    ),
                    _buildCardViewWidget(
                      title: StringConstants.locationText,
                      imgUrl: IconConstants.location,
                      icon: IconConstants.arrowForward,
                    ),
                    _buildCardViewWidget(
                      title: StringConstants.notificationText,
                      imgUrl: IconConstants.notification,
                      icon: IconConstants.arrowForward,
                    ),
                    _buildCardViewWidget(
                      title: StringConstants.languageText,
                      imgUrl: IconConstants.language,
                      icon: IconConstants.arrowForward,
                    ),
                    _buildCardViewWidget(
                      title: StringConstants.appVersionText,
                      imgUrl: IconConstants.phoneCall,
                      icon: IconConstants.arrowForward,
                    ),
                    _buildCardViewWidget(
                      title: StringConstants.changePasswordText,
                      imgUrl: IconConstants.card,
                      icon: IconConstants.arrowForward,
                    ),
                    _buildCardViewWidget(
                      title: StringConstants.loginText,
                      imgUrl: IconConstants.setting,
                      icon: IconConstants.arrowForward,
                    ),
                    _buildCardViewWidget(
                      title: StringConstants.changePasswordText,
                      imgUrl: IconConstants.card,
                      icon: IconConstants.arrowForward,
                    ),
                    _buildCardViewWidget(
                      title: StringConstants.loginText,
                      imgUrl: IconConstants.setting,
                      icon: IconConstants.arrowForward,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(10),
        height: 55,
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 13, horizontal: 20),
        decoration: BoxDecoration(
          color: ColorConstants.lightPinkColor,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          border: Border.all(color: ColorConstants.pinkColor, width: 2),
        ),
        child: Text(
          StringConstants.logoutText,
          style: TextStyle(
            color: ColorConstants.pinkColor,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }

  _buildCardViewWidget(
      {required String imgUrl, required String title, required String icon}) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: ListTile(
          leading: Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
            child: ClipRRect(
                child: Image.asset(
              imgUrl,
              height: 22,
              width: 22,
            )),
          ),
          title: Text(
            title,
            style: AppStyles.regularSmallFont,
          ),
          trailing: ClipRRect(
              child: Image.asset(
            icon,
            height: 30,
            width: 30,
          )),
        ),
      ),
    );
  }
}
