import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pemint_admin_app/utilities/app_colors.dart';
import 'package:pemint_admin_app/view/homescreen/homescreen_contact.dart';
import 'package:pemint_admin_app/view/homescreen/homescreen_dashboard.dart';
import 'package:pemint_admin_app/view/homescreen/homescreen_history.dart';
import 'package:pemint_admin_app/view_model/profile_controller.dart';

class HomeScreenProfile extends StatefulWidget {
  HomeScreenProfile({Key? key}) : super(key: key);

  @override
  State<HomeScreenProfile> createState() => _HomeScreenProfileState();
}

class _HomeScreenProfileState extends State<HomeScreenProfile> {
  final ProfileController controller = Get.put(ProfileController());

  @override
  void initState() {
    controller.getProfileDetails();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Stack(
        children: [
          SafeArea(
              child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Padding(
              padding: const EdgeInsets.only(
                right: 10,
                top: 20,
              ),
              child: SingleChildScrollView(
                physics: NeverScrollableScrollPhysics(),
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
                          height: Get.height,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(12)),
                            color: Color.fromARGB(255, 33, 170, 243),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Get.to(HomeScreenDashboard());
                                },
                                child: Container(
                                  margin: EdgeInsets.only(
                                      left: 10, right: 10, top: 20),
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
                              GestureDetector(
                                onTap: () {
                                  Get.to(HomeScreenHistory());
                                },
                                child: Container(
                                  margin: EdgeInsets.only(left: 10),
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
                              Container(
                                height: 2,
                                width: 100,
                                color: AppColor.whiteColor,
                              ),
                              Container(
                                color: AppColor.primaryColor,
                                width: 100,
                                height: 70,
                                child: Center(
                                  child: Text(
                                    'Profile',
                                    style: TextStyle(
                                      color: AppColor.whiteColor,
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
                                  margin: EdgeInsets.only(left: 10, top: 30),
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
                                Container(
                                  height: 50,
                                  width: Get.width / 1.55,
                                  decoration: BoxDecoration(
                                      color: AppColor.greyColor,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, right: 20),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Basic Info',
                                          style: TextStyle(
                                            color: Color(0xFF292D32),
                                            fontSize: 20,
                                            fontFamily: 'Cairo',
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        Icon(
                                          Icons.account_circle_sharp,
                                          size: 30,
                                          color: Colors.blueGrey,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Text(
                                  'Your Name',
                                  style: TextStyle(
                                    color: Color(0xFF292D32),
                                    fontSize: 16,
                                    fontFamily: 'Cairo',
                                    fontWeight: FontWeight.w300,
                                    height: 0,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    print(controller.data.value?.businessType
                                        .toString());
                                    print(controller.data.value?.directorName
                                        .toString());
                                    print(controller.data.value?.partnerType
                                        .toString());
                                    print(controller.data.value?.directorName
                                        .toString());
                                    print(controller.data.value?.businessName
                                        .toString());
                                  },
                                  child: Text(
                                    controller.data.value?.directorName
                                            .toString() ??
                                        '-',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF292D32),
                                      fontSize: 16,
                                      fontFamily: 'Cairo',
                                      fontWeight: FontWeight.w600,
                                      height: 0,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Mobile Number',
                                  style: TextStyle(
                                    color: Color(0xFF292D32),
                                    fontSize: 16,
                                    fontFamily: 'Cairo',
                                    fontWeight: FontWeight.w300,
                                    height: 0,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  '+91 9937458985',
                                  style: TextStyle(
                                    color: Color(0xFF292D32),
                                    fontSize: 16,
                                    fontFamily: 'Cairo',
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Container(
                                  height: 50,
                                  width: Get.width / 1.55,
                                  decoration: BoxDecoration(
                                      color: AppColor.greyColor,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, right: 20),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Business Profile',
                                          style: TextStyle(
                                            color: Color(0xFF292D32),
                                            fontSize: 20,
                                            fontFamily: 'Cairo',
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        Icon(
                                          Icons.account_circle_sharp,
                                          size: 30,
                                          color: Colors.blueGrey,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Text(
                                  'Business Type',
                                  style: TextStyle(
                                    color: Color(0xFF292D32),
                                    fontSize: 16,
                                    fontFamily: 'Cairo',
                                    fontWeight: FontWeight.w300,
                                    height: 0,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  controller.data.value?.businessType
                                          .toString() ??
                                      '-',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF292D32),
                                    fontSize: 16,
                                    fontFamily: 'Cairo',
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Business Name',
                                  style: TextStyle(
                                    color: Color(0xFF292D32),
                                    fontSize: 16,
                                    fontFamily: 'Cairo',
                                    fontWeight: FontWeight.w300,
                                    height: 0,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  controller.data.value?.businessName
                                          .toString() ??
                                      '-',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF292D32),
                                    fontSize: 16,
                                    fontFamily: 'Cairo',
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Business Catagory',
                                  style: TextStyle(
                                    color: Color(0xFF292D32),
                                    fontSize: 16,
                                    fontFamily: 'Cairo',
                                    fontWeight: FontWeight.w300,
                                    height: 0,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  controller.data.value?.partnerType
                                          .toString() ??
                                      '-',
                                  style: TextStyle(
                                    color: Color(0xFF292D32),
                                    fontSize: 16,
                                    fontFamily: 'Cairo',
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Business Address',
                                  style: TextStyle(
                                    color: Color(0xFF292D32),
                                    fontSize: 16,
                                    fontFamily: 'Cairo',
                                    fontWeight: FontWeight.w300,
                                    height: 0,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  controller.data.value?.headOfficeAddress
                                          .toString() ??
                                      '-',
                                  style: TextStyle(
                                    color: Color(0xFF292D32),
                                    fontSize: 16,
                                    fontFamily: 'Cairo',
                                    fontWeight: FontWeight.w600,
                                    height: 0,
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
            ),
          )),
          controller.isLoading.value == true
              ? Container(
                  color: Colors.black.withOpacity(0.5),
                  child: Center(
                    child: CircularProgressIndicator.adaptive(
                      backgroundColor: Colors.white.withOpacity(0.5),
                      valueColor: const AlwaysStoppedAnimation<Color>(
                          AppColor.primaryColor),
                    ),
                  ),
                )
              : Container()
        ],
      );
    });
  }
}
