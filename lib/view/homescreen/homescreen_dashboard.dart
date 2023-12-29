import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pemint_admin_app/utilities/app_colors.dart';
import 'package:pemint_admin_app/view/homescreen/homescreen_contact.dart';
import 'package:pemint_admin_app/view/homescreen/homescreen_history.dart';
import 'package:pemint_admin_app/view/homescreen/homescreen_profile.dart';
import 'package:pemint_admin_app/view/login/business_type.dart';
import 'package:pemint_admin_app/view_model/dashboard_controller.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class HomeScreenDashboard extends StatefulWidget {
  HomeScreenDashboard({Key? key}) : super(key: key);

  @override
  State<HomeScreenDashboard> createState() => _HomeScreenDashboardState();
}

class _HomeScreenDashboardState extends State<HomeScreenDashboard> {
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
              child: SingleChildScrollView(physics: NeverScrollableScrollPhysics(),
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
                          height: Get.height ,
                          width: 100,
                          decoration: const BoxDecoration(
                            borderRadius:
                                BorderRadius.only(topRight: Radius.circular(12)),
                            color: Color.fromARGB(255, 33, 170, 243),
                          ),
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Get.to(const HomeScreenHistory());
                                },
                                child: Container(
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
                              ),
                              Container(
                                height: 2,
                                width: 100,
                                color: AppColor.whiteColor,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Get.to(HomeScreenContact());
                                },
                                child: Container(
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
                              ),
                              GestureDetector(
                                onTap: () {
                                  Get.to(const HomeScreenHistory());
                                },
                                child: Container(
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
                              ),
                              GestureDetector(
                                onTap: () {
                                  Get.to(HomeScreenProfile());
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
                        const SizedBox(width: 20),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(),
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
                                  width: 25,
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
                                  width: 25,
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
                                  width: 25,
                                ),
                                Icon(
                                  Icons.calendar_month_rounded,
                                  color: AppColor.contentColorBlue,
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              // height: 210,
                              width: Get.width / 1.6,
                              decoration: BoxDecoration(
                                  color: const Color(0xFFF6F5FA),
                                  borderRadius: BorderRadius.circular(18)),
                              padding: const EdgeInsets.all(20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                height: 10,
                                                width: 10,
                                                color: AppColor.primaryColor,
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              const Text(
                                                'Demand Amount',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 10,
                                                  fontFamily: 'Cairo',
                                                  fontWeight: FontWeight.w400,
                                                  height: 0,
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          Text(
                                            '₹${controller.data.value?.totalDemandAmount ?? '-'}',
                                            style: TextStyle(
                                              color: Color(0xFF52378F),
                                              fontSize: 16,
                                              fontFamily: 'Cairo',
                                              fontWeight: FontWeight.w600,
                                              height: 0,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        height: 100,
                                        width: 110,
                                        child: Stack(
                                          children: [
                                            SfRadialGauge(axes: <RadialAxis>[
                                              RadialAxis(
                                                showLabels: false,
                                                showTicks: false,
                                                startAngle: 180,
                                                endAngle: 0,
                                                radiusFactor: 0.7,
                                                canScaleToFit: true,
                                                axisLineStyle:
                                                const AxisLineStyle(
                                                  thickness: 0.3,
                                                  color: AppColor.primaryColor,
                                                  thicknessUnit:
                                                  GaugeSizeUnit.factor,
                                                  cornerStyle:
                                                  CornerStyle.bothFlat,
                                                ),
                                                pointers: <GaugePointer>[
                                                  const RangePointer(
                                                      value: 50,
                                                      width: 0.3,
                                                      sizeUnit:
                                                      GaugeSizeUnit.factor,
                                                      cornerStyle:
                                                      CornerStyle.bothFlat)
                                                ],
                                              )
                                            ]),
                                            Positioned.fill(
                                              top: 60,
                                              child: Center(
                                                child: Column(
                                                  mainAxisSize: MainAxisSize.min,
                                                  children: [
                                                    Text(
                                                      'Outstanding\nAmount',
                                                      textAlign: TextAlign.center,
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 8,
                                                        fontFamily: 'Cairo',
                                                        fontWeight:
                                                        FontWeight.w600,
                                                      ),
                                                    ),SizedBox(height: 5,),
                                                    Text(
                                                      '${controller.data.value?.totalOutstandingAmount ?? '-'}',
                                                      style: TextStyle(
                                                        color: Color(0xFFFF0000),
                                                        fontSize: 10,
                                                        fontFamily: 'Cairo',
                                                        fontWeight: FontWeight.w400,
                                                        height: 0,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      // Container(
                                      //     color: Colors.red, height: 80, width: 80)
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 35,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        height: 10,
                                        width: 10,
                                        color: AppColor.contentColorBlue,
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      const Text(
                                        'Collection Amount',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 10,
                                          fontFamily: 'Cairo',
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                   Text(
                                     '₹${controller.data.value?.totalCollection ?? '-'}',
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
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              // height: 210,
                              width: Get.width / 1.6,
                              decoration: BoxDecoration(
                                  color: const Color(0xFFF6F5FA),
                                  borderRadius: BorderRadius.circular(18)),
                              padding: const EdgeInsets.all(20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                height: 10,
                                                width: 10,
                                                color: AppColor.primaryColor,
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              const Text(
                                                'Demand Count',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 10,
                                                  fontFamily: 'Cairo',
                                                  fontWeight: FontWeight.w400,
                                                  height: 0,
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          Text(
                                            '${controller.data.value?.totalDemandCount ?? '-'}',
                                            style: TextStyle(
                                              color: Color(0xFF52378F),
                                              fontSize: 16,
                                              fontFamily: 'Cairo',
                                              fontWeight: FontWeight.w600,
                                              height: 0,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        height: 100,
                                        width: 110,
                                        child: Stack(
                                          children: [
                                            SfRadialGauge(axes: <RadialAxis>[
                                              RadialAxis(
                                                showLabels: false,
                                                showTicks: false,
                                                startAngle: 180,
                                                endAngle: 0,
                                                radiusFactor: 0.7,
                                                canScaleToFit: true,
                                                axisLineStyle:
                                                const AxisLineStyle(
                                                  thickness: 0.3,
                                                  color: AppColor.primaryColor,
                                                  thicknessUnit:
                                                  GaugeSizeUnit.factor,
                                                  cornerStyle:
                                                  CornerStyle.bothFlat,
                                                ),
                                                pointers: <GaugePointer>[
                                                  const RangePointer(
                                                      value: 50,
                                                      width: 0.3,
                                                      sizeUnit:
                                                      GaugeSizeUnit.factor,
                                                      cornerStyle:
                                                      CornerStyle.bothFlat)
                                                ],
                                              )
                                            ]),
                                            Positioned.fill(
                                              top: 60,
                                              child: Center(
                                                child: Column(
                                                  mainAxisSize: MainAxisSize.min,
                                                  children: [
                                                    Text(
                                                      'Outstanding\nCount',
                                                      textAlign: TextAlign.center,
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 8,
                                                        fontFamily: 'Cairo',
                                                        fontWeight:
                                                        FontWeight.w600,
                                                      ),
                                                    ),SizedBox(height: 5,),
                                                    Text(
                                                      '${controller.data.value?.totalOutsandingCount ?? '-'}',
                                                      style: TextStyle(
                                                        color: Color(0xFFFF0000),
                                                        fontSize: 10,
                                                        fontFamily: 'Cairo',
                                                        fontWeight: FontWeight.w400,
                                                        height: 0,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      // Container(
                                      //     color: Colors.red, height: 80, width: 80)
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 35,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        height: 10,
                                        width: 10,
                                        color: AppColor.contentColorBlue,
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      const Text(
                                        'Collection Count',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 10,
                                          fontFamily: 'Cairo',
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    '${controller.data.value?.totalCollectionCount ?? '-'}',
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
                          child: const Icon(Icons.close)),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: Container(
                    height: 40,
                    width: 250,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: AppColor.contentColorBlue)),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
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
                const SizedBox(
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
                        child: const Padding(
                          padding: EdgeInsets.only(left: 5, right: 5),
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
                      const Text(
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
                const SizedBox(
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
