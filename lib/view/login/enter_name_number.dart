import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pemint_admin_app/utilities/app_colors.dart';
import 'package:pemint_admin_app/view/login/otp.dart';

class Enter_Name_Number extends StatelessWidget {
  const Enter_Name_Number({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: 50, left: 30, right: 30),
        child: GestureDetector(onTap: (){Get.to(Enter_OTP());},
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
                      border: Border.all(color: AppColor.whiteColor),
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
              'Your Name',
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
              'Mobile Number*',
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
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(border: InputBorder.none),
                )),
              ),
            ),SizedBox(height: 20,),
            Text(
              'Password',
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
                padding: const EdgeInsets.only(left: 20,right: 10),
                child: Center(
                    child: TextFormField(obscureText: true,
                      style: TextStyle(
                        color: Color(0xFF292D32),
                        fontSize: 20,
                        fontFamily: 'Cairo',
                        fontWeight: FontWeight.w600,
                      ),
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(suffixIcon: Icon(Icons.lock_outline_rounded,color: AppColor.primaryColor,size: 25,),
                          border: InputBorder.none),
                    )),
              ),
            ),
            SizedBox(
              height: 20,
            ), Text(
              'Re enter Password',
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
                padding: const EdgeInsets.only(left: 20,right: 10),
                child: Center(
                    child: TextFormField(obscureText: true,
                      style: TextStyle(
                        color: Color(0xFF292D32),
                        fontSize: 20,
                        fontFamily: 'Cairo',
                        fontWeight: FontWeight.w600,
                      ),
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(suffixIcon: Icon(Icons.lock_outline_rounded,color: AppColor.primaryColor,size: 25,),
                          border: InputBorder.none),
                    )),
              ),
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
