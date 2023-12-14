import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pemint_admin_app/utilities/app_colors.dart';
import 'package:pemint_admin_app/view/homescreen/homescreen_contact.dart';
import 'package:pemint_admin_app/view/homescreen/homescreen_history.dart';
import 'package:pemint_admin_app/view/homescreen/homescreen_profile.dart';
import 'package:pemint_admin_app/view/login/business_type.dart';

class HomeScreenDashboard extends StatelessWidget {
  const HomeScreenDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
        Scaffold(resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.only(
          right: 10,
          top: 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Image.asset(
                    'assets/pemintlogo2.png',
                    height: 70,
                    width: 70,
                  ),
                ),
                Row(
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Welcome! \n',
                            style: TextStyle(
                              color: Color(0xFF292D32),
                              fontSize: 14,
                              fontFamily: 'Cairo',
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          TextSpan(
                            text: 'Shivam Grocery Shop',
                            style: TextStyle(
                              color: Color(0xFF292D32),
                              fontSize: 14,
                              fontFamily: 'Cairo',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.menu,
                      color: Colors.black,
                      size: 35,
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: Get.height / 1.23,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(12)),
                    color: Color.fromARGB(255, 33, 170, 243),
                  ),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.to(HomeScreenHistory());
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: AppColor.primaryColor,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(12))),
                          width: 100,
                          height: 70,
                          child: Center(
                            child: Text(
                              'Dashboard',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: 'Cairo',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 2,
                        width: 100,
                        color: AppColor.whiteColor,
                      ),
                      GestureDetector(onTap: (){Get.to(HomeScreenContact());},
                        child: Container(margin: EdgeInsets.only(left: 10,top: 20),
                          height: 70,
                          width: 100,
                          child: Text(
                            'Contact',
                            style: TextStyle(
                              color: Color(0xFF292D32),
                              fontSize: 16,
                              fontFamily: 'Cairo',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(onTap: (){Get.to(HomeScreenHistory());},
                        child: Container(margin: EdgeInsets.only(left: 10),
                          decoration: BoxDecoration(),
                          width: 100,
                          height: 70,
                          child: Text(
                            'History',
                            style: TextStyle(
                              color: Color(0xFF292D32),
                              fontSize: 16,
                              fontFamily: 'Cairo',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(onTap: (){Get.to(HomeScreenProfile());},
                        child: Container(margin: EdgeInsets.only(left: 10),
                          width: 100,
                          height: 70,
                          child: Text(
                            'Profile',
                            style: TextStyle(
                              color: Color(0xFF292D32),
                              fontSize: 16,
                              fontFamily: 'Cairo',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(left: 10, ),
                          decoration: BoxDecoration(),
                          width: 100,
                          height: 70,
                          child: Text(
                            'Add\nEmployee',
                            style: TextStyle(
                              color: Color(0x7F292D32),
                              fontSize: 16,
                              fontFamily: 'Cairo',
                              fontWeight: FontWeight.w500,
                            ),
                          )),
                      Container(
                          margin: EdgeInsets.only(left: 10),
                          decoration: BoxDecoration(),
                          width: 100,
                          height: 70,
                          child: Text(
                            'QR Code\nScan and Pay',
                            style: TextStyle(
                              color: Color(0x7F292D32),
                              fontSize: 16,
                              fontFamily: 'Cairo',
                              fontWeight: FontWeight.w500,
                            ),
                          )),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(),
                        width: 100,
                        height: 70,
                        child: Text(
                          'Bill\nPayment',
                          style: TextStyle(
                            color: Color(0x7F292D32),
                            fontSize: 16,
                            fontFamily: 'Cairo',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              'Today',
                              style: TextStyle(
                                color: Color(0xFF9888A4),
                                fontSize: 12,
                                fontFamily: 'Cairo',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              'This week',
                              style: TextStyle(
                                color: Color(0xFF292D32),
                                fontSize: 12,
                                fontFamily: 'Cairo',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              'This month',
                              style: TextStyle(
                                color: Color(0xFF9888A4),
                                fontSize: 12,
                                fontFamily: 'Cairo',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Icon(
                              Icons.calendar_month_rounded,
                              color: AppColor.contentColorBlue,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 180,
                          width: Get.width / 1.6,
                          decoration: BoxDecoration(
                              color: Color(0xFFF6F5FA),
                              borderRadius: BorderRadius.circular(18)),
                          child: Padding(
                            padding: EdgeInsets.all(20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 10,
                                      width: 10,
                                      color: AppColor.primaryColor,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'Demand Amount',
                                      style: TextStyle(
                                        color: Color(0xFF535960),
                                        fontSize: 10,
                                        fontFamily: 'Cairo',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '₹3,50,000 ',
                                          style: TextStyle(
                                            color: Color(0xFF52378F),
                                            fontSize: 16,
                                            fontFamily: 'Cairo',
                                            fontWeight: FontWeight.w600,
                                            height: 0,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          height: 5,
                                          width: 40,
                                          decoration: BoxDecoration(
                                              color: AppColor.whiteColor,
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                        )
                                      ],
                                    ),
                                    Text(
                                      'Outstanding\nAmount',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFF535960),
                                        fontSize: 6,
                                        fontFamily: 'Cairo',
                                        fontWeight: FontWeight.w600,

                                      ),
                                    ),

                                  ],
                                ),
                                SizedBox(height: 20,),
                                Row(
                                  children: [
                                    Container(
                                      height: 10,
                                      width: 10,
                                      color: AppColor.contentColorBlue,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'Demand Amount',
                                      style: TextStyle(
                                        color: Color(0xFF535960),
                                        fontSize: 10,
                                        fontFamily: 'Cairo',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 20,),
                                Text(
                                  '₹2,80,000',
                                  style: TextStyle(
                                    color: Color(0xFF00BBF2),
                                    fontSize: 16,
                                    fontFamily: 'Cairo',
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Container(
                          height: 180,
                          width: Get.width / 1.6,
                          decoration: BoxDecoration(
                              color: Color(0xFFF6F5FA),
                              borderRadius: BorderRadius.circular(18)),
                          child: Padding(
                            padding: EdgeInsets.all(20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 10,
                                      width: 10,
                                      color: AppColor.primaryColor,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'Demand Count',
                                      style: TextStyle(
                                        color: Color(0xFF535960),
                                        fontSize: 10,
                                        fontFamily: 'Cairo',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '400',
                                          style: TextStyle(
                                            color: Color(0xFF52378F),
                                            fontSize: 16,
                                            fontFamily: 'Cairo',
                                            fontWeight: FontWeight.w600,
                                            height: 0,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          height: 5,
                                          width: 40,
                                          decoration: BoxDecoration(
                                              color: AppColor.whiteColor,
                                              borderRadius:
                                              BorderRadius.circular(20)),
                                        )
                                      ],
                                    ),
                                    Text(
                                      'Outstanding\nAmount',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFF535960),
                                        fontSize: 6,
                                        fontFamily: 'Cairo',
                                        fontWeight: FontWeight.w600,

                                      ),
                                    ),

                                  ],
                                ),
                                SizedBox(height: 20,),
                                Row(
                                  children: [
                                    Container(
                                      height: 10,
                                      width: 10,
                                      color: AppColor.contentColorBlue,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'Collection Count',
                                      style: TextStyle(
                                        color: Color(0xFF535960),
                                        fontSize: 10,
                                        fontFamily: 'Cairo',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 20,),
                                Text(
                                  '230',
                                  style: TextStyle(
                                    color: Color(0xFF00BBF2),
                                    fontSize: 16,
                                    fontFamily: 'Cairo',
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}

class DemandDialog extends StatelessWidget {
  const DemandDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Dialog(
        backgroundColor: AppColor.veryLightGreyColor,
        child: Container(
          height: 280,
          width: Get.width / 1.2,
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                          onTap: () {
                            Get.back();
                          },
                          child: Icon(Icons.close)),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Container(
                    height: 40,
                    width: 250,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: AppColor.contentColorBlue)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Center(
                        child: TextField(
                          textAlign: TextAlign.right,
                          keyboardType: TextInputType.number,
                          style: TextStyle(
                            color: Color(0xFF292D32),
                            fontSize: 14,
                            fontFamily: 'Cairo',
                            fontWeight: FontWeight.w700,
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            prefix: Text(
                              'Enter amount',
                              style: TextStyle(
                                color: Color(0xFF9888A4),
                                fontSize: 12,
                                fontFamily: 'Cairo',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            hintText: '₹00',
                            hintStyle: TextStyle(
                              color: Color(0xFF9888A4),
                              fontSize: 14,
                              fontFamily: 'Cairo',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 40,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border:
                                Border.all(color: AppColor.contentColorBlue)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5, right: 5),
                          child: TextField(
                            textAlign: TextAlign.start,
                            textAlignVertical: TextAlignVertical.center,
                            style: TextStyle(
                              color: Color(0xFF292D32),
                              fontSize: 12,
                              fontFamily: 'Cairo',
                              fontWeight: FontWeight.w400,
                            ),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintStyle: TextStyle(
                                color: Color(0xFF9888A4),
                                fontSize: 12,
                                fontFamily: 'Cairo',
                                fontWeight: FontWeight.w400,
                              ),
                              hintText: 'Transaction note',
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'Add details +',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xFF00BBF2),
                          fontSize: 12,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                        child: Container(
                      height: 40,
                      width: 250,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: AppColor.primaryColor),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Genearte link & Share',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: 'Cairo',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.share,
                            color: AppColor.whiteColor,
                            size: 20,
                          )
                        ],
                      ),
                    )),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
