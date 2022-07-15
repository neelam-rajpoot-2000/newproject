import 'package:flutter/material.dart';
import 'package:newproject/core/color_constants.dart';
import 'package:newproject/core/icon_constants.dart';
import 'package:newproject/core/string_constants.dart';
import 'package:newproject/core/style.dart';
import 'package:newproject/rom_trip_screen.dart';
import 'package:newproject/training_screen.dart';
import 'package:newproject/walk_screen.dart';

class ChooseTrip extends StatefulWidget {
  const ChooseTrip({Key? key}) : super(key: key);

  @override
  State<ChooseTrip> createState() => _ChooseTripState();
}

class _ChooseTripState extends State<ChooseTrip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.whiteColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    IconConstants.arrowForwardHalf,
                    height: 30,
                    width: 30,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  StringConstants.chooseText,
                  style: AppStyles.whiteSemiBoldFont,
                ),
                Container(
                  height: 700,
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                  child: DefaultTabController(
                    length: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TabBar(
                          isScrollable: true,
                          unselectedLabelColor: Colors.grey,
                          indicatorSize: TabBarIndicatorSize.tab,
                          indicator: BoxDecoration(
                            border: Border.all(
                              color: Colors.black12,
                            ),
                            borderRadius:
                                BorderRadius.circular(20), // Creates border
                            color: ColorConstants.blueGreyColor,
                          ),
                          labelPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 25),
                          labelStyle: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight
                                  .bold), //Change background color from here
                          tabs: [
                            Tab(
                              text: StringConstants.WalkText,
                            ),
                            Tab(
                              text: StringConstants.trainingText,
                            ),
                            Tab(
                              text: StringConstants.romTripText,
                            ),
                          ],
                        ),
                        SizedBox(height: 18,),
                        Expanded(
                          child: TabBarView(children: [
                            Walk(),
                            Training(),
                            RomTrip(),
                          ]),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
