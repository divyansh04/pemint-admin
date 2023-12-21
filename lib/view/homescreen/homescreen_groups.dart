import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:pemint_admin_app/utilities/app_colors.dart';
import 'package:pemint_admin_app/view/homescreen/create_group.dart';
import 'package:pemint_admin_app/view/homescreen/homescreen_contact.dart';
import 'package:pemint_admin_app/view/homescreen/homescreen_dashboard.dart';
import 'package:pemint_admin_app/view/homescreen/homescreen_history.dart';
import 'package:pemint_admin_app/view/homescreen/homescreen_profile.dart';
import 'package:pemint_admin_app/view/login/business_type.dart';
import 'package:pemint_admin_app/view_model/dashboard_controller.dart';

import 'edit_group.dart';

class Groups extends StatelessWidget {
  Groups({Key? key}) : super(key: key);

  final DashboardController viewModel = Get.put(DashboardController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Stack(
      children: [
        Scaffold(
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
                    Image.asset(
                      'assets/pemintlogo2.png',
                      height: 70,
                      width: 70,
                    ),
                    Row(
                      children: const [
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
                const SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: Get.height / 1.23,
                      width: 90,
                      decoration: const BoxDecoration(
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(12)),
                        color: Color.fromARGB(255, 33, 170, 243),
                      ),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Get.to(const HomeScreenDashboard());
                            },
                            child: Container(
                              margin: const EdgeInsets.only(left: 10, top: 20),
                              width: 100,
                              height: 50,
                              child: const Text(
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
                          Container(
                            decoration: const BoxDecoration(
                              color: AppColor.primaryColor,
                            ),
                            height: 70,
                            width: 100,
                            child: const Center(
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
                          GestureDetector(
                            onTap: () {
                              Get.to(const HomeScreenHistory());
                            },
                            child: Container(
                              margin: const EdgeInsets.only(left: 10, top: 30),
                              decoration: const BoxDecoration(),
                              width: 100,
                              height: 70,
                              child: const Text(
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
                          GestureDetector(
                            onTap: () {
                              Get.to(const HomeScreenProfile());
                            },
                            child: Container(
                              margin: const EdgeInsets.only(left: 10),
                              width: 100,
                              height: 70,
                              child: const Text(
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
                              margin: const EdgeInsets.only(
                                left: 10,
                              ),
                              decoration: const BoxDecoration(),
                              width: 100,
                              height: 70,
                              child: const Text(
                                'Add\nEmployee',
                                style: TextStyle(
                                  color: Color(0x7F292D32),
                                  fontSize: 16,
                                  fontFamily: 'Cairo',
                                  fontWeight: FontWeight.w500,
                                ),
                              )),
                          Container(
                              margin: const EdgeInsets.only(left: 10),
                              decoration: const BoxDecoration(),
                              width: 100,
                              height: 70,
                              child: const Text(
                                'QR Code\nScan and Pay',
                                style: TextStyle(
                                  color: Color(0x7F292D32),
                                  fontSize: 16,
                                  fontFamily: 'Cairo',
                                  fontWeight: FontWeight.w500,
                                ),
                              )),
                          Container(
                            margin: const EdgeInsets.only(left: 10),
                            decoration: const BoxDecoration(),
                            width: 100,
                            height: 70,
                            child: const Text(
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
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            SizedBox(
                              height: 20,
                            ),
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
                            const SizedBox(
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
                              child: const Center(
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
                            const SizedBox(
                              height: 40,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Get.to(HomeScreenContact());
                                  },
                                  child: Container(
                                    height: 40,
                                    width: 100,
                                    color: AppColor.veryLightGreyColor,
                                    child: const Center(
                                      child: Text(
                                        'Contacts',
                                        style: TextStyle(
                                          color: Color(0xFF9888A4),
                                          fontSize: 14,
                                          fontFamily: 'Cairo',
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  height: 40,
                                  width: 100,
                                  color: AppColor.veryLightPurple,
                                  child: const Center(
                                    child: Text(
                                      'Groups',
                                      style: TextStyle(
                                        color: Color(0xFF292D32),
                                        fontSize: 14,
                                        fontFamily: 'Cairo',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 18,
                                  backgroundColor: AppColor.greyColor,
                                  child: Icon(
                                    Icons.groups,
                                    color: AppColor.contentColorBlue,
                                  ),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                GestureDetector(
                                    onTap: () {
                                      Get.dialog(CreateGroup());
                                    },
                                    child: const Text(
                                      'Create New Group',
                                      style: TextStyle(
                                        color: Color(0xFF00BBF2),
                                        fontSize: 14,
                                        fontFamily: 'Cairo',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ))
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 1,
                              width: Get.width / 1.5,
                              color: AppColor.lightGreyColor,
                            ),
                            // SizedBox(
                            //   height: 10,
                            // ),
                            // Row(
                            //   mainAxisAlignment: MainAxisAlignment.start,
                            //   crossAxisAlignment: CrossAxisAlignment.center,
                            //   children: [
                            //     CircleAvatar(
                            //       radius: 18,
                            //       backgroundColor: AppColor.greyColor,
                            //       child: Icon(
                            //         Icons.groups,
                            //         color: AppColor.contentColorBlue,
                            //       ),
                            //     ),
                            //     SizedBox(
                            //       width: 8,
                            //     ),
                            //     GestureDetector(
                            //       onTap: () {
                            //         Get.dialog(
                            //           ViewGroup(),
                            //         );
                            //       },
                            //       child: Column(
                            //         mainAxisAlignment: MainAxisAlignment.start,
                            //         crossAxisAlignment:
                            //             CrossAxisAlignment.start,
                            //         children: [
                            //           Text(
                            //             'Z1 Society',
                            //             style: TextStyle(
                            //               color: Color(0xFF292D32),
                            //               fontSize: 14,
                            //               fontFamily: 'Cairo',
                            //               fontWeight: FontWeight.w400,
                            //             ),
                            //           ),
                            //           Text(
                            //             '7 members',
                            //             style: TextStyle(
                            //               color: Color(0xFF9888A4),
                            //               fontSize: 12,
                            //               fontFamily: 'Cairo',
                            //               fontWeight: FontWeight.w400,
                            //             ),
                            //           )
                            //         ],
                            //       ),
                            //     ),
                            //   ],
                            // ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                                width: Get.width / 1.5,
                                height: Get.height / 2.2,
                                child: SlideableList())
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
        GetBuilder(
            init: DashboardController(),
            builder: (controller) {
              if (controller.isLoading.value == true) {
                return Container(
                  color: Colors.black.withOpacity(0.5),
                  child: Center(
                    child: CircularProgressIndicator.adaptive(
                      backgroundColor: Colors.white.withOpacity(0.5),
                      valueColor: const AlwaysStoppedAnimation<Color>(
                          AppColor.primaryColor),
                    ),
                  ),
                );
              } else {
                return Container();
              }
            }),
      ],
    ));
  }
}

class ViewGroup extends StatelessWidget {
  const ViewGroup({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      alignment: Alignment.bottomRight,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      backgroundColor: AppColor.veryLightGreyColor,
      child: Container(
        height: Get.height / 1.75,
        width: Get.width / 1.2,
        child: Padding(
          padding:
              const EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                      radius: 18,
                      backgroundColor: AppColor.greyColor,
                      child: Icon(
                        Icons.groups_outlined,
                        color: AppColor.blackColor,
                        size: 22,
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Z1 Society',
                        style: TextStyle(
                          color: Color(0xFF292D32),
                          fontSize: 14,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '10 members',
                        style: TextStyle(
                          color: Color(0xFF9888A4),
                          fontSize: 12,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.w400,
                          height: 0.10,
                        ),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: Get.width / 1.4,
                height: 1,
                color: AppColor.greyColor,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5, bottom: 5, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: Get.width / 3,
                      height: 30,
                      decoration: BoxDecoration(
                          color: AppColor.whiteColor,
                          border: Border.all(
                            width: .1,
                            color: AppColor.blackColor,
                          ),
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                        child: Text(
                          '                    ₹1,000',
                          style: TextStyle(
                            color: Color(0xFF292D32),
                            fontSize: 14,
                            fontFamily: 'Cairo',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: Get.width / 3,
                      height: 30,
                      decoration: BoxDecoration(
                          color: AppColor.primaryColor,
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                        child: Text(
                          'Receive same amount \nfrom all members',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontFamily: 'Cairo',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10, top: 25),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Abhisek Behera Road 1',
                      style: TextStyle(
                        color: Color(0xFF292D32),
                        fontSize: 14,
                        fontFamily: 'Cairo',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Container(
                      height: 25,
                      width: 80,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColor.blackColor,
                            width: .1,
                          ),
                          color: AppColor.whiteColor,
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                        child: Text(
                          '       ₹1,000',
                          style: TextStyle(
                            color: Color(0xFF292D32),
                            fontSize: 12,
                            fontFamily: 'Cairo',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    Icon(
                      Icons.link,
                      color: AppColor.contentColorBlue,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10, top: 25),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Abhisek Behera Road 1',
                      style: TextStyle(
                        color: Color(0xFF292D32),
                        fontSize: 14,
                        fontFamily: 'Cairo',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Container(
                      height: 25,
                      width: 80,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColor.veryLightPurple,
                            width: 1,
                          ),
                          color: AppColor.whiteColor,
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                        child: Text(
                          '       ₹1,000',
                          style: TextStyle(
                            color: Color(0xFF292D32),
                            fontSize: 12,
                            fontFamily: 'Cairo',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    Icon(
                      Icons.link,
                      color: AppColor.contentColorBlue,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10, top: 25),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: Get.width / 2.8,
                      child: Text(
                        'Abhisek Behera Road 9',
                        style: TextStyle(
                          color: Color(0xFF292D32),
                          fontSize: 14,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Container(
                      height: 25,
                      width: 80,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColor.veryLightPurple,
                            width: 1,
                          ),
                          color: AppColor.whiteColor,
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                        child: Text(
                          '       ₹1,000',
                          style: TextStyle(
                            color: Color(0xFF292D32),
                            fontSize: 12,
                            fontFamily: 'Cairo',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    Icon(
                      Icons.link,
                      color: AppColor.contentColorBlue,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10, top: 25),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: Get.width / 2.8,
                      child: Text(
                        'Abhisek Behera Road 2',
                        style: TextStyle(
                          color: Color(0xFF292D32),
                          fontSize: 14,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Container(
                      height: 25,
                      width: 80,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColor.veryLightPurple,
                            width: 1,
                          ),
                          color: AppColor.whiteColor,
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                        child: Text(
                          '       ₹1,000',
                          style: TextStyle(
                            color: Color(0xFF292D32),
                            fontSize: 12,
                            fontFamily: 'Cairo',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    Icon(
                      Icons.link,
                      color: AppColor.contentColorBlue,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10, top: 25),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: Get.width / 2.8,
                      child: Text(
                        'Abhisek Behera Road 3',
                        style: TextStyle(
                          color: Color(0xFF292D32),
                          fontSize: 14,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Container(
                      height: 25,
                      width: 80,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColor.veryLightPurple,
                            width: 1,
                          ),
                          color: AppColor.whiteColor,
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                        child: Text(
                          '       ₹1,000',
                          style: TextStyle(
                            color: Color(0xFF292D32),
                            fontSize: 12,
                            fontFamily: 'Cairo',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    Icon(
                      Icons.link,
                      color: AppColor.contentColorBlue,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10, top: 25),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: Get.width / 2.8,
                      child: Text(
                        'Ram Singh',
                        style: TextStyle(
                          color: Color(0xFF292D32),
                          fontSize: 14,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Container(
                      height: 25,
                      width: 80,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColor.veryLightPurple,
                            width: 1,
                          ),
                          color: AppColor.whiteColor,
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                        child: Text(
                          '       ₹1,000',
                          style: TextStyle(
                            color: Color(0xFF292D32),
                            fontSize: 12,
                            fontFamily: 'Cairo',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    Icon(
                      Icons.link,
                      color: AppColor.contentColorBlue,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SlideableList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return Slidable(
            direction: Axis.horizontal,
            endActionPane: ActionPane(
              extentRatio: .4,
              motion: ScrollMotion(),
              children: [
                SlidableAction(
                  flex: 2,
                  onPressed: (buildContext) {
                    Get.dialog(EditGroup());
                  },
                  // An action can be bigger than the others.
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      bottomLeft: Radius.circular(5)),

                  backgroundColor: Color(0xFFD6CCFF),
                  foregroundColor: AppColor.primaryColor,
                  icon: Icons.edit,
                ),
                SlidableAction(
                  flex: 2,
                  onPressed: (buildContext) {
                    Get.bottomSheet(Container(
                      decoration: BoxDecoration(
                          color: AppColor.whiteColor,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40))),
                      height: 200,
                      width: Get.width,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Are you sure you want to Delete \nthis Group?',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF292D32),
                              fontSize: 20,
                              fontFamily: 'Cairo',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 40,
                                width: 150,
                                decoration: BoxDecoration(
                                    color: AppColor.primaryColor,
                                    borderRadius: BorderRadius.circular(12)),
                                child: GestureDetector(onTap: (){Get.back();},
                                  child: Center(
                                    child: Text(
                                      'No',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontFamily: 'Cairo',
                                        fontWeight: FontWeight.w700,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                child: Center(
                                  child: Text(
                                    'Yes',
                                    style: TextStyle(
                                      color: Color(0x9B9888A4),
                                      fontSize: 14,
                                      fontFamily: 'Cairo',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                ),
                                height: 40,
                                width: 150,
                                decoration: BoxDecoration(
                                    color: Color(0xFFE9E6F8),
                                    borderRadius: BorderRadius.circular(12)),
                              )
                            ],
                            crossAxisAlignment: CrossAxisAlignment.center,
                          )
                        ],
                      ),
                    ));
                  },
                  // An action can be bigger than the others.

                  backgroundColor: Color(0xFFEEE9FF),
                  foregroundColor: AppColor.primaryColor,
                  icon: Icons.delete_outline_rounded,
                ),
              ],
            ),
            child: GestureDetector(
              onTap: () {
                Get.dialog(ViewGroup());
              },
              child: const ListTile(
                leading: CircleAvatar(
                  backgroundColor: AppColor.greyColor,
                  radius: 18,
                  child: Icon(
                    Icons.groups,
                    color: AppColor.contentColorBlue,
                  ),
                ),
                title: Text('Z1 Society'),
                subtitle: Text(
                  '7 members',
                  style: TextStyle(
                    color: Color(0xFF9888A4),
                    fontSize: 12,
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ));
      },
    );
  }
}
