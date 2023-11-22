import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pemint_admin_app/utilities/app_colors.dart';
import 'package:pemint_admin_app/view/login/business_type.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
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
                Image.asset(
                  'assets/pemintlogo2.png',
                  height: 70,
                  width: 70,
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
                  height: Get.height / 1.223,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(12)),
                    color: AppColor.contentColorBlue,
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: 100,
                        height: 70,
                        child: Center(
                          child: Text(
                            'Dashboard',
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
                        height: 2,
                        width: 100,
                        color: AppColor.whiteColor,
                      ),
                      Container(decoration: BoxDecoration(color: AppColor.primaryColor,),
                        height: 70,
                        width: 100,
                        
                        child: Center(
                          child: Text(
                            'Contact',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Cairo',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 2,
                        width: 100,
                        color: AppColor.whiteColor,
                      ),
                      Container(
                        width: 100,
                        height: 70,
                        child: Center(
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
                      Container(
                        width: 100,
                        height: 70,
                        child: Center(
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
                        Text(
                          'Receive Money                                      ',
                          style: TextStyle(
                            color: Color(0xFF292D32),
                            fontSize: 16,
                            fontFamily: 'Cairo',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 40,
                          width: Get.width / 1.5,
                          decoration: BoxDecoration(
                              color: AppColor.veryLightPurple,
                              borderRadius: BorderRadius.circular(20),
                              border:
                                  Border.all(color: AppColor.primaryColor)),
                          child: Center(
                            child: TextField(
                              style: TextStyle(
                                  color: Color(0xFF292D32),
                                  fontSize: 14,
                                  fontFamily: 'Cairo',
                                  fontWeight: FontWeight.w600,
                                  height: 1.5),
                              textAlign: TextAlign.start,
                              textAlignVertical: TextAlignVertical.center,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: AppColor.purpleAccent,
                                ),
                                hintText: 'Enter a mobile number or name',
                                hintStyle: TextStyle(
                                  color: Color(0xFF9888A4),
                                  fontSize: 14,
                                  fontFamily: 'Cairo',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 40,
                              width: 100,
                              color: AppColor.veryLightPurple,
                              child: Center(
                                child: Text(
                                  'Contacts',
                                  style: TextStyle(
                                    color: Color(0xFF292D32),
                                    fontSize: 14,
                                    fontFamily: 'Cairo',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              height: 40,
                              width: 100,
                              color: AppColor.veryLightGreyColor,
                              child: Center(
                                child: Text(
                                  'Groups',
                                  style: TextStyle(
                                    color: Color(0xFF9888A4),
                                    fontSize: 14,
                                    fontFamily: 'Cairo',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Text(
                                  'Abhisek Behera',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF292D32),
                                    fontSize: 14,
                                    fontFamily: 'Cairo',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '+918658956865',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF9888A4),
                                    fontSize: 12,
                                    fontFamily: 'Cairo',
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              width: Get.width / 3,
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.dialog(DemandDialog());
                              },
                              child: Icon(
                                Icons.add_circle_outline_rounded,
                                color: AppColor.primaryColor,
                                size: 30,
                              ),
                            )
                          ],
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
