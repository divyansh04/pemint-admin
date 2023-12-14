import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pemint_admin_app/utilities/app_colors.dart';
import 'package:pemint_admin_app/view/homescreen/homescreen_contact.dart';
import 'package:pemint_admin_app/view/homescreen/homescreen_dashboard.dart';
import 'package:pemint_admin_app/view/homescreen/homescreen_profile.dart';
import 'package:pemint_admin_app/view/login/business_type.dart';
import 'package:pemint_admin_app/view_model/dashboard_controller.dart';

class HomeScreenHistory extends StatelessWidget {
  const HomeScreenHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
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
                          Get.to(HomeScreenDashboard());
                        },
                        child: Container(
                          margin: EdgeInsets.only(left: 10, right: 10, top: 20),
                          width: 100,
                          height: 70,
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
                      GestureDetector(
                        onTap: () {
                          Get.to(HomeScreenContact());
                        },
                        child: Container(
                          margin: EdgeInsets.only(left: 10),
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
                      Container(
                        height: 2,
                        width: 100,
                        color: AppColor.whiteColor,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: AppColor.primaryColor,
                        ),
                        width: 100,
                        height: 70,
                        child: Center(
                          child: Text(
                            'History',
                            style: TextStyle(
                              color: Colors.white,
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
                      GestureDetector(
                        onTap: () {
                          Get.to(HomeScreenProfile());
                        },
                        child: Container(
                          margin: EdgeInsets.only(left: 10, top: 30),
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
                          margin: EdgeInsets.only(
                            left: 10,
                          ),
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
                  width: 10,
                ),
                Column(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 40,
                          width: Get.width / 1.5,
                          decoration: BoxDecoration(
                              color: AppColor.veryLightPurple,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: AppColor.primaryColor)),
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
                        GestureDetector(
                          onTap: () {
                            Get.dialog(TransactionLinkDialog());
                            print('abc');
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              CircleAvatar(
                                child: Icon(
                                  Icons.arrow_upward_rounded,
                                  color: AppColor.whiteColor,
                                ),
                                backgroundColor: Color(0xFF2E1762),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Abhisek Behera',
                                    textAlign: TextAlign.start,
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
                                    '11 nov 2023',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: Color(0xFF9888A4),
                                      fontSize: 12,
                                      fontFamily: 'Cairo',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(width: Get.width / 9),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '₹10,00,000',
                                    style: TextStyle(
                                      color: Color(0xFF292D32),
                                      fontSize: 12,
                                      fontFamily: 'Cairo',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Pending',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF00BBF2),
                                      fontSize: 10,
                                      fontFamily: 'Cairo',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        GestureDetector(onTap: (){Get.dialog(TransactionDetailDialog());},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              CircleAvatar(
                                child: Icon(
                                  Icons.arrow_downward_rounded,
                                  color: AppColor.whiteColor,
                                ),
                                backgroundColor: Color(0xFF2E1762),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Abhisek Behera',
                                    textAlign: TextAlign.start,
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
                                    '11 nov 2023',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: Color(0xFF9888A4),
                                      fontSize: 12,
                                      fontFamily: 'Cairo',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(width: Get.width / 9),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '₹10,00,000',
                                    style: TextStyle(
                                      color: Color(0xFF292D32),
                                      fontSize: 12,
                                      fontFamily: 'Cairo',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Success',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF54F15A),
                                      fontSize: 10,
                                      fontFamily: 'Cairo',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  )
                                ],
                              ),
                            ],
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

class TransactionLinkDialog extends StatelessWidget {
  TransactionLinkDialog({
    Key? key,
  }) : super(key: key);

  final DashboardController viewModel = Get.put(DashboardController());

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Dialog(
          alignment: Alignment.centerRight,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          insetPadding: EdgeInsets.only(left: Get.width / 3.5, right: 20),
          backgroundColor: AppColor.whiteColor,
          child: Container(
            decoration: BoxDecoration(),
            height: 120,
            width: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'https://bit.ly/3F1ifID',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Cairo',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Icon(
                      Icons.copy_rounded,
                      color: AppColor.primaryColor,
                      size: 22,
                    ),Icon(
                      Icons.share_rounded,
                      color: AppColor.primaryColor,
                      size: 22,
                    ),Icon(
                      Icons.delete_outline_rounded,
                      color: AppColor.primaryColor,
                      size: 22,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
class TransactionDetailDialog extends StatelessWidget {
  TransactionDetailDialog({
    Key? key,
  }) : super(key: key);

  final DashboardController viewModel = Get.put(DashboardController());

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Dialog(
          alignment: Alignment.centerRight,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          insetPadding: EdgeInsets.only(left: Get.width / 3.5, right: 20),
          backgroundColor: AppColor.whiteColor,
          child: Container(
            decoration: BoxDecoration(),
            height: 120,
            width: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'https://bit.ly/3F1ifID',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Cairo',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Icon(
                      Icons.copy_rounded,
                      color: AppColor.primaryColor,
                      size: 22,
                    ),Icon(
                      Icons.share_rounded,
                      color: AppColor.primaryColor,
                      size: 22,
                    ),Icon(
                      Icons.delete_outline_rounded,
                      color: AppColor.primaryColor,
                      size: 22,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
