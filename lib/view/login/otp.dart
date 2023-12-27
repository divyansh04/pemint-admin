import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pemint_admin_app/utilities/app_colors.dart';
import 'package:pemint_admin_app/view/login/business_type.dart';
import 'package:pemint_admin_app/view_model/auth_controller.dart';

class Enter_OTP extends StatefulWidget {
  const Enter_OTP({Key? key}) : super(key: key);

  @override
  State<Enter_OTP> createState() => _Enter_OTPState();
}

class _Enter_OTPState extends State<Enter_OTP> {
  final MobRegController viewModel = Get.find();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Stack(
      children: [
        Scaffold(
          resizeToAvoidBottomInset: false,
          bottomNavigationBar: Padding(
            padding: EdgeInsets.only(bottom: 50, left: 30, right: 30),
            child: GestureDetector(
              onTap: () {
                viewModel.verifyOtp();
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
                  'Sending OTP to',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  '+91 ${viewModel.numberController.text}',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Enter OTP',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Form(
                  key: viewModel.otpFormKey,
                  child: Container(
                    width: Get.width,
                    height: 51,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                        child: TextFormField(
                      controller: viewModel.otpController,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF292D32),
                        fontSize: 20,
                        fontFamily: 'Cairo',
                        fontWeight: FontWeight.w600,
                      ),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          hintText: '******',
                          alignLabelWithHint: true,
                          hintStyle: TextStyle(
                            color: Color(0xFF7E6491),
                            fontSize: 20,
                            fontFamily: 'Cairo',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                          border: InputBorder.none),
                    )),
                  ),
                ),
              ],
            ),
          ),
        ),
        GetBuilder(
            init: MobRegController(),
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
