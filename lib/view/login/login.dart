import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pemint_admin_app/utilities/app_colors.dart';
import 'package:pemint_admin_app/view/homescreen/homescreen_contact.dart';
import 'package:pemint_admin_app/view/homescreen/homescreen_dashboard.dart';
import 'package:pemint_admin_app/view/login/enter_name_number.dart';
import 'package:pemint_admin_app/view/login/forgot_password.dart';
import 'package:pemint_admin_app/view_model/auth_controller.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);

  final MobRegController viewModel = Get.put(MobRegController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Scaffold(
            resizeToAvoidBottomInset: false,
            bottomNavigationBar: Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, bottom: 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
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
                        controller: viewModel.numberController,
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
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Enter Password',
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
                        scrollPadding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).viewInsets.bottom),
                        controller: viewModel.passwordController,
                        obscureText: true,
                        style: TextStyle(
                          color: Color(0xFF292D32),
                          fontSize: 20,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.w600,
                        ),
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                            suffixIcon: Icon(
                              Icons.lock_outline_rounded,
                              color: AppColor.primaryColor,
                              size: 25,
                            ),
                            border: InputBorder.none),
                      )),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(ForgotPassword());
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Forget password ?',
                          style: TextStyle(
                            color: Color(0xFF00BBF2),
                            fontSize: 14,
                            fontFamily: 'Cairo',
                            fontWeight: FontWeight.w700,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  GestureDetector(
                    onTap: () {
                      viewModel.login();
                    },
                    child: Container(
                      child: Center(
                        child: Text(
                          'Login',
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
                          borderRadius: BorderRadius.circular(15)),
                    ),
                  ),
                ],
              ),
            ),
            backgroundColor: AppColor.primaryColor,
            body: Padding(
              padding: const EdgeInsets.only(top: 50),
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
      ),
    );
  }
}
