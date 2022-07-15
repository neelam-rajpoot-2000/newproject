import 'package:flutter/material.dart';
import 'package:newproject/core/color_constants.dart';
import 'package:newproject/core/icon_constants.dart';
import 'package:newproject/core/string_constants.dart';

class Walk extends StatefulWidget {
  const Walk({Key? key}) : super(key: key);

  @override
  State<Walk> createState() => _WalkState();
}

class _WalkState extends State<Walk> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              decoration: BoxDecoration(
                color: ColorConstants.lightBlueColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Text(StringConstants.tenText),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.network(
                                fit: BoxFit.cover,
                                'https://www.whatsappimages.in/wp-content/uploads/2022/03/Best-Whatsapp-Dp-Profile-For-Boy-Images-free-hd.gif',
                                height: 50,
                                width: 50,
                              ),
                            ), SizedBox(height: 8,),
                          Text(StringConstants.abdulText),
                        ],
                      ),
                      SizedBox(width: 10,),
                      Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.network(
                              fit: BoxFit.cover,
                              'https://www.whatsappimages.in/wp-content/uploads/2022/03/Best-Whatsapp-Dp-Profile-For-Boy-Images-free-hd.gif',
                              height: 50,
                              width: 50,
                            ),
                          ),
                          SizedBox(height: 8,),
                          Text(StringConstants.abdulText),
                        ],
                      ),
                      SizedBox(width: 10,),
                      Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.network(
                              fit: BoxFit.cover,
                              'https://www.whatsappimages.in/wp-content/uploads/2022/03/Best-Whatsapp-Dp-Profile-For-Boy-Images-free-hd.gif',
                              height: 50,
                              width: 50,
                            ),
                          ), SizedBox(height: 8,),
                          Text(StringConstants.abdulText),
                        ],
                      ),
                    ],
                  ),
                  Positioned(
                    child: Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        color: ColorConstants.lightBlueColor,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child:Image.asset(IconConstants.add),
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ],
    );
  }
}
