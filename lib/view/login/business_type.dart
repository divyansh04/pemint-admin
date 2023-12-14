import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pemint_admin_app/utilities/app_colors.dart';
import 'package:pemint_admin_app/view/login/kyc.dart';
import 'package:pemint_admin_app/view/login/otp.dart';

class BusinessType extends StatelessWidget {
  const BusinessType({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(resizeToAvoidBottomInset: false,
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: 50, left: 30, right: 30),
        child: GestureDetector(
          onTap: () {
            Get.to(KYC());
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
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Basic Info',
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
                      border: Border.all(color: AppColor.whiteColor),
                      borderRadius: BorderRadius.circular(20)),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Business Type',
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
                        'Individual',
                        style: TextStyle(
                          color: Color(0xFF292D32),
                          fontSize: 20,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.dialog(Dialog(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            child: Container(height: 350,
                              width: Get.width*.8,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20,right: 20,top: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            Get.back();
                                          },
                                          child: Icon(
                                            Icons.close,
                                            color: AppColor.blackColor,
                                            size: 40,
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      'Individual',
                                      style: TextStyle(
                                        color: Color(0xFF292D32),
                                        fontSize: 20,
                                        fontFamily: 'Cairo',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Text(
                                      'Sole Proprietorship',
                                      style: TextStyle(
                                        color: Color(0xFF292D32),
                                        fontSize: 20,
                                        fontFamily: 'Cairo',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Text(
                                      'Partnership',
                                      style: TextStyle(
                                        color: Color(0xFF292D32),
                                        fontSize: 20,
                                        fontFamily: 'Cairo',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Text(
                                      'Private Limited',
                                      style: TextStyle(
                                        color: Color(0xFF292D32),
                                        fontSize: 20,
                                        fontFamily: 'Cairo',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Text(
                                      "Society / Trust / NGO",
                                      style: TextStyle(
                                        color: Color(0xFF292D32),
                                        fontSize: 20,
                                        fontFamily: 'Cairo',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ));
                        },
                        child: Icon(
                          Icons.arrow_drop_down,
                          color: AppColor.contentColorBlue,
                          size: 40,
                        ),
                      )
                    ],
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Business Name',
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
                  decoration: InputDecoration(border: InputBorder.none),
                )),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Partner Type',
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
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Small Business',
                        style: TextStyle(
                          color: Color(0xFF292D32),
                          fontSize: 20,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.dialog(Dialog(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            child: Container(height: 350,
                              width: Get.width*.8,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20,right: 20,top: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            Get.back();
                                          },
                                          child: Icon(
                                            Icons.close,
                                            color: AppColor.blackColor,
                                            size: 40,
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      'Individual',
                                      style: TextStyle(
                                        color: Color(0xFF292D32),
                                        fontSize: 20,
                                        fontFamily: 'Cairo',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Text(
                                      'Sole Proprietorship',
                                      style: TextStyle(
                                        color: Color(0xFF292D32),
                                        fontSize: 20,
                                        fontFamily: 'Cairo',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Text(
                                      'Partnership',
                                      style: TextStyle(
                                        color: Color(0xFF292D32),
                                        fontSize: 20,
                                        fontFamily: 'Cairo',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Text(
                                      'Private Limited',
                                      style: TextStyle(
                                        color: Color(0xFF292D32),
                                        fontSize: 20,
                                        fontFamily: 'Cairo',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Text(
                                      "Society / Trust / NGO",
                                      style: TextStyle(
                                        color: Color(0xFF292D32),
                                        fontSize: 20,
                                        fontFamily: 'Cairo',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ));
                        },
                        child: Icon(
                          Icons.arrow_drop_down,
                          color: AppColor.contentColorBlue,
                          size: 40,
                        ),
                      )
                    ],
                  )),
            ),SizedBox(
              height: 20,
            ),
            Text(
              'Partner Type Name',
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
                      decoration: InputDecoration(border: InputBorder.none),
                    )),
              ),
            ),SizedBox(
              height: 20,
            ),
            Text(
              'Director Name',
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
                      decoration: InputDecoration(border: InputBorder.none),
                    )),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Business Address',
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
            Flexible(
              child: Container(
                width: Get.width,
                height: 151,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Center(
                      child: TextFormField(maxLines: 4,
                    style: TextStyle(
                      color: Color(0xFF292D32),
                      fontSize: 20,
                      fontFamily: 'Cairo',
                      fontWeight: FontWeight.w600,
                    ),
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(border: InputBorder.none),
                  )),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Joined On',
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
                      keyboardType: TextInputType.datetime,
                      decoration: InputDecoration(border: InputBorder.none),
                    )),
              ),
            ),
            SizedBox(height: 30,),
          ],
        ),)
      ),
    ));
  }
}
