import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pemint_admin_app/utilities/app_colors.dart';
import 'package:pemint_admin_app/view/login/enter_name_number.dart';
import 'package:pemint_admin_app/view/login/login.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, bottom: 50),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              GestureDetector(onTap: (){Get.to(Login());},
                child: Container(
                    height: 50,
                    width: Get.width,
                    decoration: BoxDecoration(
                        color: AppColor.whiteColor,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text(
                        'Log In',
                        style: TextStyle(
                          color: Color(0xFF52378F),
                          fontSize: 20,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: Get.width / 3.5,
                    height: 2,
                    color: AppColor.whiteColor,
                  ),
                  SizedBox(
                    width: Get.width * .05,
                  ),
                  Text(
                    'OR',
                    style: TextStyle(
                      color: Color(0xFF9888A4),
                      fontSize: 16,
                      fontFamily: 'Cairo',
                      fontWeight: FontWeight.w300,
                      height: 0,
                    ),
                  ),
                  SizedBox(
                    width: Get.width * .05,
                  ),
                  Container(
                    width: Get.width / 3.5,
                    height: 2,
                    color: AppColor.whiteColor,
                  ),
                ],
              ),SizedBox(height: 20,),
              GestureDetector(onTap: (){print('AVC');
                Get.to(Enter_Name_Number());},
                child: Container(
                    height: 50,
                    width: Get.width,
                    decoration: BoxDecoration(
                        color: AppColor.whiteColor,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Color(0xFF52378F),
                          fontSize: 20,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                    )),
              ),
            ],
          ),
        ),
        backgroundColor: AppColor.primaryColor,
        body: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  radius: 125,
                  backgroundColor: AppColor.contentColorBlue,
                  child: CircleAvatar(
                    backgroundColor: AppColor.whiteColor,
                    radius: 100,
                    child: Image.asset('assets/pemintlogo2.png'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
