import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pemint_admin_app/utilities/app_colors.dart';
import 'package:pemint_admin_app/view/login/otp.dart';

class BankDetails extends StatelessWidget {
  const BankDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: 50, left: 30, right: 30),
        child: GestureDetector(
          onTap: () {
            Get.to(Enter_OTP());
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
              'Enter Account Number',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: 'Cairo',
                fontWeight: FontWeight.w600,
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
                padding: const EdgeInsets.only(left: 20),
                child: Center(
                    child: TextFormField(
                  style: TextStyle(
                    color: Color(0xFF292D32),
                    fontSize: 20,
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.w600,
                  ),
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(hintText: '*************',hintStyle:  TextStyle(
                    color: Color(0xFF292D32),
                    fontSize: 20,
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                      border: InputBorder.none),
                )),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Re enter Account Number',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: 'Cairo',
                fontWeight: FontWeight.w600,
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
                padding: const EdgeInsets.only(left: 20),
                child: Center(
                    child: TextFormField(
                      style: TextStyle(
                        color: Color(0xFF292D32),
                        fontSize: 20,
                        fontFamily: 'Cairo',
                        fontWeight: FontWeight.w600,
                      ),
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(hintText: '*************',hintStyle:  TextStyle(
                        color: Color(0xFF292D32),
                        fontSize: 20,
                        fontFamily: 'Cairo',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                          border: InputBorder.none),
                    )),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'IFSC Code',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: 'Cairo',
                fontWeight: FontWeight.w600,
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
                padding: const EdgeInsets.only(left: 20, right: 10),
                child: Center(
                    child: TextFormField(
                      style: TextStyle(
                        color: Color(0xFF292D32),
                        fontSize: 20,
                        fontFamily: 'Cairo',
                        fontWeight: FontWeight.w600,
                      ),
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(hintText: '*************',hintStyle:  TextStyle(
                        color: Color(0xFF292D32),
                        fontSize: 20,
                        fontFamily: 'Cairo',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                          border: InputBorder.none),
                    )),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Account Holder Name',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: 'Cairo',
                fontWeight: FontWeight.w600,
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
                padding: const EdgeInsets.only(left: 20, right: 10),
                child: Center(
                    child:TextFormField(
                      style: TextStyle(
                        color: Color(0xFF292D32),
                        fontSize: 20,
                        fontFamily: 'Cairo',
                        fontWeight: FontWeight.w600,
                      ),
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(hintStyle:  TextStyle(
                        color: Color(0xFF292D32),
                        fontSize: 20,
                        fontFamily: 'Cairo',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                          border: InputBorder.none),
                    )),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Cancelled Cheque',
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
          ],
        ),
      ),
    ));
  }
}
