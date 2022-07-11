import 'package:flutter/material.dart';
import 'package:newproject/core/color_constants.dart';
import 'package:newproject/core/icon_constants.dart';
import 'package:newproject/core/string_constants.dart';
import 'package:newproject/core/style.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    StringConstants.profileText,
                    style: AppStyles.whiteSemiBoldFont,
                  ),
                  Spacer(),
                  Image.asset(IconConstants.setting, height: 20, width: 20),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                decoration: BoxDecoration(
                  color: ColorConstants.whiteColor,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/azImage.png',
                      height: 70,
                      width: 70,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          StringConstants.text,
                          style: AppStyles.whiteSemiBoldFont,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              StringConstants.accountNameText,
                              style: AppStyles.whiteBoldFont,
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            Text('20144511320',
                                style: TextStyle(
                                    color: ColorConstants.blackColor,
                                    fontWeight: FontWeight.w700)),
                            Image.asset(
                              IconConstants.copy,
                              height: 20,
                              width: 20,
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 13),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  border: Border.all(
                      color: ColorConstants.lightPinkColor, width: 2),
                ),
                child: Text(
                  StringConstants.orText,
                  style: TextStyle(
                    color: ColorConstants.lightPinkColor,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Text(
                StringConstants.generalText,
                style: AppStyles.whiteSemiBoldFont,
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  children: [
                    _buildCardViewWidget(
                      title: StringConstants.constantsText,
                      imgUrl: IconConstants.phoneCall,
                    ),
                    _buildCardViewWidget(
                      title: StringConstants.constantsText,
                      imgUrl: IconConstants.phoneCall,
                    ),
                    _buildCardViewWidget(
                      title: StringConstants.constantsText,
                      imgUrl: IconConstants.phoneCall,
                    ),
                  ],
                ),
              ),
              Text(
                StringConstants.helpCenterText,
                style: AppStyles.whiteSemiBoldFont,
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  children: [
                    _buildCardViewWidget(
                      title: StringConstants.helpText,
                      imgUrl: IconConstants.help,
                    ),
                    _buildCardViewWidget(
                        title: StringConstants.findText,
                        imgUrl: IconConstants.location),
                    _buildCardViewWidget(
                        title: StringConstants.aboutText,
                        imgUrl: IconConstants.about),
                    _buildCardViewWidget(
                        title: StringConstants.helpText,
                        imgUrl: IconConstants.help),
                    _buildCardViewWidget(
                        title: StringConstants.aboutText,
                        imgUrl: IconConstants.phoneCall),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: ColorConstants.whiteColor,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card),
            label: 'Cards',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_rounded),
            label: 'Profile',
            backgroundColor: Colors.pink,
          ),
        ],
        selectedItemColor: Colors.black,
        elevation: 5,
        iconSize: 30,
      ),
    );
  }

  _buildCardViewWidget({required String imgUrl, required String title}) {
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
            IconConstants.arrowForward,
            height: 30,
            width: 30,
          )),
        ),
      ),
    );
  }
}
