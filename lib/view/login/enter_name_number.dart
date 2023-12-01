import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pemint_admin_app/utilities/app_colors.dart';
import 'package:pemint_admin_app/view/login/otp.dart';
import 'package:pemint_admin_app/view_model/auth_controller.dart';

class EnterNameNumber extends StatefulWidget {
  const EnterNameNumber({Key? key}) : super(key: key);

  @override
  State<EnterNameNumber> createState() => _EnterNameNumberState();
}

class _EnterNameNumberState extends State<EnterNameNumber> {
  final MobRegController viewModel = Get.put(MobRegController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Stack(
      children: [
        Scaffold(
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.only(bottom: 50, left: 30, right: 30),
            child: GestureDetector(
              onTap: () {
                viewModel.signUp();
              },
              child: Container(
                height: 51,
                width: Get.width,
                decoration: BoxDecoration(
                    color: AppColor.whiteColor,
                    borderRadius: BorderRadius.circular(20)),
                child: const Center(
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
                const Text(
                  'Basic Info',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
                const SizedBox(
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
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Your Name',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
                const SizedBox(
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
                      controller: viewModel.nameController,
                      style: const TextStyle(
                        color: Color(0xFF292D32),
                        fontSize: 20,
                        fontFamily: 'Cairo',
                        fontWeight: FontWeight.w600,
                      ),
                      keyboardType: TextInputType.name,
                      decoration:
                          const InputDecoration(border: InputBorder.none),
                    )),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Mobile Number*',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
                const SizedBox(
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
                      style: const TextStyle(
                        color: Color(0xFF292D32),
                        fontSize: 20,
                        fontFamily: 'Cairo',
                        fontWeight: FontWeight.w600,
                      ),
                      keyboardType: TextInputType.number,
                      decoration:
                          const InputDecoration(border: InputBorder.none),
                    )),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Password',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
                const SizedBox(
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
                      controller: viewModel.passwordController,
                      obscureText: true,
                      style: const TextStyle(
                        color: Color(0xFF292D32),
                        fontSize: 20,
                        fontFamily: 'Cairo',
                        fontWeight: FontWeight.w600,
                      ),
                      keyboardType: TextInputType.name,
                      decoration: const InputDecoration(
                          suffixIcon: Icon(
                            Icons.lock_outline_rounded,
                            color: AppColor.primaryColor,
                            size: 25,
                          ),
                          border: InputBorder.none),
                    )),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Re enter Password',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
                const SizedBox(
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
                      controller: viewModel.password2Controller,
                      obscureText: true,
                      style: const TextStyle(
                        color: Color(0xFF292D32),
                        fontSize: 20,
                        fontFamily: 'Cairo',
                        fontWeight: FontWeight.w600,
                      ),
                      keyboardType: TextInputType.name,
                      decoration: const InputDecoration(
                          suffixIcon: Icon(
                            Icons.lock_outline_rounded,
                            color: AppColor.primaryColor,
                            size: 25,
                          ),
                          border: InputBorder.none),
                    )),
                  ),
                ),
                const SizedBox(
                  height: 20,
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
