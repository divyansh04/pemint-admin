import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>(); // Add form key

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Scaffold(
            resizeToAvoidBottomInset: true,
            backgroundColor: AppColor.primaryColor,
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: CircleAvatar(
                      radius: 105,
                      backgroundColor: AppColor.contentColorBlue,
                      child: CircleAvatar(
                        backgroundColor: AppColor.whiteColor,
                        radius: 80,
                        child: Image.asset('assets/pemintlogo2.png'),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding:
                      const EdgeInsets.only(left: 30, right: 30, bottom: 10),
                  child: Form(
                    key: _formKey, // Assign form key to the form
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Mobile Number',
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
                              inputFormatters: [
                                FilteringTextInputFormatter.allow(
                                    new RegExp("[0-9]"))
                              ],
                              keyboardType: TextInputType.number,
                              decoration:
                                  InputDecoration(counterStyle:
                                  TextStyle(height: double.minPositive),
                                      counterText: "",
                                      border: InputBorder.none),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Enter a valid Mobile Number';
                                }
                                if (value.length != 10) {
                                  return 'Mobile Number must be 10 digits';
                                }
                                return null;
                              },
                              maxLength: 10,
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
                            padding:
                                const EdgeInsets.only(left: 20, right: 10),
                            child: Center(
                                child: TextFormField(
                              scrollPadding: EdgeInsets.only(
                                  bottom: MediaQuery.of(context)
                                      .viewInsets
                                      .bottom),
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
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Enter the correct password';
                                }
                                return null;
                              },
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
                          height: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            if (_formKey.currentState!.validate()) {
                              // If all fields are valid
                              viewModel.login();
                            }
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
                ),
              ],
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
            },
          ),
        ],
      ),
    );
  }
}
