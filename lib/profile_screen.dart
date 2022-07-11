import 'package:flutter/material.dart';
import 'package:newproject/core/color_constants.dart';
import 'package:newproject/core/icon_constants.dart';
import 'package:newproject/core/string_constants.dart';
import 'package:newproject/core/style.dart';

class Pofile extends StatefulWidget {
  const Pofile({Key? key}) : super(key: key);

  @override
  State<Pofile> createState() => _PofileState();
}

class _PofileState extends State<Pofile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white70,
      body: Padding(
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
            Center(
              child: ElevatedButton(
                child: Text('showModalBottomSheet'),
                onPressed: () {
                  showModalBottomSheet<void>(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50.0),
                          topRight: Radius.circular(50.0)),
                    ),
                    context: context,
                    builder: (BuildContext context) {
                      return SizedBox(
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 40),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: [
                                    Text(
                                      StringConstants.profileText,
                                      style: AppStyles.whiteSemiBoldFont,
                                    ),
                                    Spacer(),
                                    Text(
                                      StringConstants.editText,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 15),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 25,
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 10),
                                  decoration: BoxDecoration(
                                    color: ColorConstants.whiteColor,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  ),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        'assets/azImage.png',
                                        height: 70,
                                        width: 70,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                                                      color: ColorConstants
                                                          .blackColor,
                                                      fontWeight:
                                                          FontWeight.w700)),
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
                                Text(
                                  StringConstants.personalInformationText,
                                  style: AppStyles.whiteSemiBoldFont,
                                ),
                                Expanded(
                                  child: ListView(
                                      scrollDirection: Axis.vertical,
                                      shrinkWrap: true,
                                      children: [
                                        _buildCardViewWidget(
                                          title: StringConstants.countryText,
                                          subtitle: 'indonesia',
                                        ),
                                        _buildCardViewWidget(
                                          title: StringConstants.emailText,
                                          subtitle: 'abc@gmail.com',
                                        ),
                                        _buildCardViewWidget(
                                          title:
                                              StringConstants.phoneNumberText,
                                          subtitle: '9876543210',
                                        ),
                                        _buildCardViewWidget(
                                          title: StringConstants.idText,
                                          subtitle: '945976804684ehfe',
                                        ),
                                      ]),
                                ),
                                Text(
                                  StringConstants.deviceInformationText,
                                  style: AppStyles.whiteSemiBoldFont,
                                ),
                                Expanded(
                                  child: ListView(
                                      scrollDirection: Axis.vertical,
                                      shrinkWrap: true,
                                      children: [
                                        _buildCardViewWidget(
                                          title: StringConstants.countryText,
                                          subtitle: 'indonesia',
                                        ),
                                        _buildCardViewWidget(
                                          title: StringConstants.appVersionText,
                                          subtitle: '2.1.2',
                                        ),
                                        _buildCardViewWidget(
                                          title: StringConstants.appVersionText,
                                          subtitle: '2.1.2',
                                        ),
                                        _buildCardViewWidget(
                                          title: StringConstants.appVersionText,
                                          subtitle: '2.1.2',
                                        ),
                                      ]),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }

  _buildCardViewWidget({required String title, required String subtitle}) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: ListTile(
          title: Text(
            title,
            style: AppStyles.regularSmallFont,
          ),
          trailing: Text(
            subtitle,
            style: AppStyles.regularSmallFont,
          ),
        ),
      ),
    );
  }
}
