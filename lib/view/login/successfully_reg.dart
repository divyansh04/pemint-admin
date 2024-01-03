import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pemint_admin_app/utilities/app_colors.dart';
import 'package:pemint_admin_app/view/login/enter_name_number.dart';
import 'package:pemint_admin_app/view/login/login.dart';

class SuccessfullyReg extends StatelessWidget {
  const SuccessfullyReg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, bottom: 50),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              GestureDetector(
                onTap: () {
                  Get.to(Login());
                },
                child: Container(
                    height: 50,
                    width: Get.width,
                    decoration: BoxDecoration(
                        color: AppColor.whiteColor,
                        borderRadius: BorderRadius.circular(20)),
                    child: const Center(
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


            ],
          ),
        ),
        backgroundColor: AppColor.primaryColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                backgroundColor: AppColor.contentColorBlue,
                radius: 50,
                child: Icon(Icons.check,color: AppColor.whiteColor,size: 50,),
              ),
            ),SizedBox(height: 20,),
            Text(
              'You are Successfully Registered\nwith Us!\nPlease Log in to continue.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: 'Cairo',
                fontWeight: FontWeight.w700,

              ),
            )
          ],
        ),
      ),
    );
  }
}
