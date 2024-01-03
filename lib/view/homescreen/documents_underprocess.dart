import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pemint_admin_app/utilities/app_colors.dart';
import 'package:pemint_admin_app/view/homescreen/homescreen_contact.dart';
import 'package:pemint_admin_app/view/homescreen/homescreen_history.dart';
import 'package:pemint_admin_app/view/homescreen/homescreen_profile.dart';
import 'package:pemint_admin_app/view/login/business_type.dart';
import 'package:pemint_admin_app/view_model/dashboard_controller.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class Documents_UnderProcess extends StatefulWidget {
  Documents_UnderProcess({Key? key}) : super(key: key);

  @override
  State<Documents_UnderProcess> createState() => _Documents_UnderProcessState();
}

class _Documents_UnderProcessState extends State<Documents_UnderProcess> {
  final DashboardController controller = Get.put(DashboardController());

  @override
  void initState() {
    controller.getDashboardData();
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
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        //drawer
                        Container(
                          height: Get.height,
                          width: 100,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(12)),
                            color: Color.fromARGB(255, 33, 170, 243),
                          ),
                          child: Column(
                            children: [
                              Container(
                                decoration: const BoxDecoration(
                                    color: AppColor.primaryColor,
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(12))),
                                width: 100,
                                height: 70,
                                child: const Center(
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
                              Container(
                                height: 2,
                                width: 100,
                                color: AppColor.whiteColor,
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.only(left: 10, top: 20),
                                height: 70,
                                width: 100,
                                child: const Text(
                                  'Contact',
                                  style: TextStyle(
                                    color: Color(0xFF292D32),
                                    fontSize: 16,
                                    fontFamily: 'Cairo',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 10),
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
                              Container(
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
                        const SizedBox(width: 20),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 50,
                            ),
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 30),
                                child: Text(
                                  'Thank you for Registering.\nYour account will be activate \nwithin 48 hr.',
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
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )),
        ],
      );
    });
  }
}
