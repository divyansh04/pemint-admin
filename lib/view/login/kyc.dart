import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pemint_admin_app/utilities/app_colors.dart';
import 'package:pemint_admin_app/view/login/bank_details.dart';
import 'package:pemint_admin_app/view/login/otp.dart';

class KYC extends StatelessWidget {
  const KYC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: 50, left: 30, right: 30),
        child: GestureDetector(
          onTap: () {
            Get.to(BankDetails());
          },
          child: Container(
            child: Center(
              child: Text(
                'Next',
                style: TextStyle(
                  color: Color(0xFF52378F),
                  fontSize: 20,
                  fontFamily: 'Cairo',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            height: 51,
            width: Get.width,
            decoration: BoxDecoration(
                color: AppColor.whiteColor,
                borderRadius: BorderRadius.circular(20)),
          ),
        ),
      ),
      backgroundColor: AppColor.primaryColor,
      body: Padding(
        padding: const EdgeInsets.only(left: 40, right: 40, top: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Upload KYC',
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontFamily: 'Cairo',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  height: 5,
                  width: Get.width / 4.5,
                  decoration: BoxDecoration(
                      color: AppColor.whiteColor,
                      borderRadius: BorderRadius.circular(20)),
                ),
                SizedBox(
                  width: Get.width * .03,
                ),
                Container(
                  height: 5,
                  width: Get.width / 4.5,
                  decoration: BoxDecoration(
                      color: AppColor.whiteColor,
                      borderRadius: BorderRadius.circular(20)),
                ),
                SizedBox(
                  width: Get.width * .03,
                ),
                Container(
                  height: 5,
                  width: Get.width / 4.5,
                  decoration: BoxDecoration(
                      color: AppColor.whiteColor,
                      borderRadius: BorderRadius.circular(20)),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Address Proof',
              style: TextStyle(
                color: Color(0xFFF6F5FA),
                fontSize: 20,
                fontFamily: 'Cairo',
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Front',
              style: TextStyle(
                color: Color(0xFFF6F5FA),
                fontSize: 20,
                fontFamily: 'Cairo',
                fontWeight: FontWeight.w300,
                height: 0,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: Get.width,
              height: 51,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Aadhar.png",
                        style: TextStyle(
                          color: Color(0xFF292D32),
                          fontSize: 20,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 30,
                            width: 80,
                            decoration: BoxDecoration(
                              color: AppColor.contentColorBlue,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                              child: Text(
                                'Upload',
                                style: TextStyle(
                                  color: Color(0xFF292D32),
                                  fontSize: 16,
                                  fontFamily: 'Cairo',
                                  fontWeight: FontWeight.w700,

                                ),
                              ),
                            ),
                          ))
                    ],
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Back',
              style: TextStyle(
                color: Color(0xFFF6F5FA),
                fontSize: 20,
                fontFamily: 'Cairo',
                fontWeight: FontWeight.w300,
                height: 0,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: Get.width,
              height: 51,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Aadhar.png",
                        style: TextStyle(
                          color: Color(0xFF292D32),
                          fontSize: 20,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 30,
                            width: 80,
                            decoration: BoxDecoration(
                              color: AppColor.contentColorBlue,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                              child: Text(
                                'Upload',
                                style: TextStyle(
                                  color: Color(0xFF292D32),
                                  fontSize: 16,
                                  fontFamily: 'Cairo',
                                  fontWeight: FontWeight.w700,

                                ),
                              ),
                            ),
                          ))
                    ],
                  )),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Pan Card',
              style: TextStyle(
                color: Color(0xFFF6F5FA),
                fontSize: 20,
                fontFamily: 'Cairo',
                fontWeight: FontWeight.w600,

              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: Get.width,
              height: 51,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Aadhar.png",
                        style: TextStyle(
                          color: Color(0xFF292D32),
                          fontSize: 20,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 30,
                            width: 80,
                            decoration: BoxDecoration(
                              color: AppColor.contentColorBlue,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                              child: Text(
                                'Upload',
                                style: TextStyle(
                                  color: Color(0xFF292D32),
                                  fontSize: 16,
                                  fontFamily: 'Cairo',
                                  fontWeight: FontWeight.w700,

                                ),
                              ),
                            ),
                          ))
                    ],
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'CIN Number',
              style: TextStyle(
                color: Color(0xFFF6F5FA),
                fontSize: 20,
                fontFamily: 'Cairo',
                fontWeight: FontWeight.w600,

              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: Get.width,
              height: 51,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "*****",
                        style: TextStyle(
                          color: Color(0xFF292D32),
                          fontSize: 20,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 30,
                            width: 80,
                            decoration: BoxDecoration(
                              color: AppColor.contentColorBlue,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                              child: Text(
                                'Upload',
                                style: TextStyle(
                                  color: Color(0xFF292D32),
                                  fontSize: 16,
                                  fontFamily: 'Cairo',
                                  fontWeight: FontWeight.w700,

                                ),
                              ),
                            ),
                          ))
                    ],
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Other Documents',
              style: TextStyle(
                color: Color(0xFFF6F5FA),
                fontSize: 20,
                fontFamily: 'Cairo',
                fontWeight: FontWeight.w600,

              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: Get.width,
              height: 51,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Shop Reg,Trade Licence\nPartnership Deed,GST Reg",
                        style: TextStyle(
                          color: Color(0xFF292D32),
                          fontSize: 16,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 30,
                            width: 80,
                            decoration: BoxDecoration(
                              color: AppColor.contentColorBlue,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                              child: Text(
                                'Upload',
                                style: TextStyle(
                                  color: Color(0xFF292D32),
                                  fontSize: 16,
                                  fontFamily: 'Cairo',
                                  fontWeight: FontWeight.w700,

                                ),
                              ),
                            ),
                          ))
                    ],
                  )),
            ),
          ],
        ),
      ),
    ));
  }
}
