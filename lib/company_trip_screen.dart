import 'package:flutter/material.dart';
import 'package:newproject/core/color_constants.dart';
import 'package:newproject/core/icon_constants.dart';
import 'package:newproject/core/string_constants.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:newproject/core/style.dart';

class CompanyTrip extends StatefulWidget {
  const CompanyTrip({Key? key}) : super(key: key);

  @override
  State<CompanyTrip> createState() => _CompanyTripState();
}

class _CompanyTripState extends State<CompanyTrip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.whiteColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  ClipRRect(
                    child: Image.asset(
                      IconConstants.fourDots,
                      fit: BoxFit.cover,
                      width: 30,
                      height: 30,
                    ),
                  ),
                  Spacer(),
                  ClipRRect(
                    child: Image.asset(
                      'assets/girl.png',
                      width: 80,
                      fit: BoxFit.cover,
                      height: 80,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Wrap(
                children: [
                  Text(
                    StringConstants.walkText,
                    style: AppStyles.regularSmallFont,
                  ),
                  SizedBox(
                    width: 120,
                  ),
                  Text(
                    StringConstants.Text,
                    style: AppStyles.whiteSemiBoldFont,
                  ),
                  Text(
                    StringConstants.milesText,
                    style: AppStyles.regularSmallFont,
                  ),
                  Text(
                    StringConstants.lastText,
                    style: AppStyles.whiteBoldFont,
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                StringConstants.forYouText,
                style: AppStyles.regularSmallFont,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                height: 250,
                child: ListView.builder(
                  shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(margin: EdgeInsets.symmetric(horizontal: 10),
                        padding:
                        EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                        decoration: BoxDecoration(
                          color: ColorConstants.lightBlueColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              decoration: BoxDecoration(
                                color: ColorConstants.whiteColor,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Image.asset(
                                IconConstants.bicycle,
                                height: 60,
                                width: 60,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              StringConstants.trainingText,
                              style: AppStyles.regularSmallFont,
                            ),
                            Text(
                              StringConstants.octText,
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              decoration: BoxDecoration(
                                  color: ColorConstants.blueGreyColor,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Text(StringConstants.mileText,style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w400),),
                            )
                          ],
                        ),
                      );
                    }
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                StringConstants.lastTripText,
                style: AppStyles.regularSmallFont,
              ),
              SizedBox(height: 20,),
              Expanded(
                child: ListView(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    children: [
                      _buildCardViewWidget(
                          subtitle1: StringConstants.octText,
                          title1: StringConstants.walkText,
                          title2: StringConstants.twoText,
                          icon: IconConstants.bicycle,
                          subtitle2: StringConstants.date1Text),
                      SizedBox(height: 20,),
                      _buildCardViewWidget(
                          subtitle1: StringConstants.octText,
                          title1: StringConstants.walkText,
                          title2: StringConstants.twoText,
                          icon: IconConstants.bicycle,
                          subtitle2: StringConstants.date1Text),
                      SizedBox(height: 20,),
                      _buildCardViewWidget(
                          subtitle1: StringConstants.octText,
                          title1: StringConstants.walkText,
                          title2: StringConstants.twoText,
                          icon: IconConstants.bicycle,
                          subtitle2: StringConstants.date1Text),
                      SizedBox(height: 20,),
                      _buildCardViewWidget(
                          subtitle1: StringConstants.octText,
                          title1: StringConstants.walkText,
                          title2: StringConstants.twoText,
                          icon: IconConstants.bicycle,
                          subtitle2: StringConstants.date1Text),
                      SizedBox(height: 20,),
                      _buildCardViewWidget(
                          subtitle1: StringConstants.octText,
                          title1: StringConstants.walkText,
                          title2: StringConstants.twoText,
                          icon: IconConstants.bicycle,
                          subtitle2: StringConstants.date1Text),
                      SizedBox(height: 20,),
                      _buildCardViewWidget(
                          subtitle1: StringConstants.octText,
                          title1: StringConstants.walkText,
                          title2: StringConstants.twoText,
                          icon: IconConstants.bicycle,
                          subtitle2: StringConstants.date1Text),
                    ]),
              ),

            ],
          ),
        ),
      ),
    );
  }

  _buildCardViewWidget(
      {required String icon,
      required String title2,
      required String title1,
      required String subtitle1,
      required String subtitle2}) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
              color: ColorConstants.lightGreyColor,
              borderRadius: BorderRadius.circular(10)),
          child: ClipRRect(
            child: Image.asset(
              icon,
              height: 50,
              width: 50,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(width: 10,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title1,style: AppStyles.richText,),
            SizedBox(height: 3,),
            Text(subtitle1),
          ],
        ),
        Spacer(),
        Column(
          children: [
            Text(title2,style: AppStyles.richText,),
            SizedBox(height: 3,),
            Text(subtitle2),
          ],
        )
      ],
    );
  }

}
