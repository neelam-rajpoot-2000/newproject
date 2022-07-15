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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
              decoration: BoxDecoration(
                color: ColorConstants.bluColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Text(StringConstants.tenText),
                  SizedBox(height: 20,),
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
                      SizedBox(width: 20,),
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
                      SizedBox(width: 20,),
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
                          Text(StringConstants.abdulText,),
                        ],
                      ),
                    ],
                  ),

                ],
              ),
            ),
            SizedBox(height: 60,),
            Text(StringConstants.companyText,style: TextStyle(
                color: ColorConstants.blackColor,fontSize: 26,fontWeight: FontWeight.w500
            ),),
            SizedBox(height: 12,),
            Text(StringConstants.tText,style: TextStyle(
              fontSize: 16
            ),),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(padding: EdgeInsets.symmetric(vertical:30,horizontal: 30 ),
                  decoration: BoxDecoration(
                    color: ColorConstants.lightBlueColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(StringConstants.placeText,style: TextStyle(
                        fontWeight: FontWeight.w300,color: Colors.black38,
                      ),),
                      SizedBox(height: 5,),
                      Text(StringConstants.pText,style: TextStyle(
                        fontSize: 16
                      ),)
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical:30,horizontal: 30 ),
                  decoration: BoxDecoration(
                    color: ColorConstants.lightBlueColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(StringConstants.distanceText,style: TextStyle(
                        fontWeight: FontWeight.w300,color: Colors.black38,
                      ),),
                      SizedBox(height: 5,),
                      Text(StringConstants.sevenText,style: TextStyle(
                          fontSize: 16
                      ),)
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 40,),
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                color: ColorConstants.blueGreyColor,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Text(
                'Join',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
        Positioned(
          top: 140,left: 120,
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),
                color: Colors.white70),
            padding: EdgeInsets.all(5),
            child: FloatingActionButton( backgroundColor: ColorConstants.bluColor,
              onPressed: () {  },
              child: const Icon(Icons.add,size: 35,),
            ),
          ),
        ),
      ],
    );
  }
}
