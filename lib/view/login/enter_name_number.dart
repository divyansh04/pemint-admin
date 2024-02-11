import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>(); // Add form key

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Scaffold(
            resizeToAvoidBottomInset: true,
            backgroundColor: AppColor.primaryColor,
            body: Padding(
              padding: const EdgeInsets.only(left: 40, right: 40, top: 50),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Form(
                      key: _formKey, // Assign form key to the form
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Welcome to PeMint Business!',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontFamily: 'Cairo',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            'Please enter your details to Register.',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Cairo',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
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
                                  inputFormatters: [
                                    FilteringTextInputFormatter.allow(
                                        RegExp("[A-Za-z]"))
                                  ],
                                  controller: viewModel.nameController,
                                  style: const TextStyle(
                                    color: Color(0xFF292D32),
                                    fontSize: 20,
                                    fontFamily: 'Cairo',
                                    fontWeight: FontWeight.w600,
                                  ),
                                  keyboardType: TextInputType.name,
                                  decoration: const InputDecoration(
                                      border: InputBorder.none),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Name cannot be empty';
                                    }
                                    return null;
                                  },
                                  maxLength: 40,
                                  maxLines: 1,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            'Email',
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
                                  controller: viewModel.emailController,
                                  style: const TextStyle(
                                    color: Color(0xFF292D32),
                                    fontSize: 20,
                                    fontFamily: 'Cairo',
                                    fontWeight: FontWeight.w600,
                                  ),
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                  ),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Email cannot be empty';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            'Mobile Number',
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
                                  inputFormatters: [
                                    FilteringTextInputFormatter.allow(
                                        RegExp("[0-9]"))
                                  ],
                                  controller: viewModel.numberController,
                                  style: const TextStyle(
                                    color: Color(0xFF292D32),
                                    fontSize: 20,
                                    fontFamily: 'Cairo',
                                    fontWeight: FontWeight.w600,
                                  ),
                                  keyboardType: TextInputType.number,
                                  decoration: const InputDecoration(
                                      counterStyle:
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
                                    if (value == '0000000000') {
                                      return 'Enter a valid mobile number';
                                    }
                                    return null;
                                  },
                                  maxLength: 10,
                                ),
                              ),
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
                              padding:
                                  const EdgeInsets.only(left: 20, right: 10),
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
                                    counterStyle:
                                        TextStyle(height: double.minPositive),
                                    counterText: "",
                                    suffixIcon: Icon(
                                      Icons.lock_outline_rounded,
                                      color: AppColor.primaryColor,
                                      size: 25,
                                    ),
                                    border: InputBorder.none,
                                  ),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Password cannot be empty';
                                    }
                                    return null;
                                  },
                                  maxLength: 12,
                                  maxLines: 1,
                                ),
                              ),
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
                              padding:
                                  const EdgeInsets.only(left: 20, right: 10),
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
                                    counterStyle:
                                        TextStyle(height: double.minPositive),
                                    counterText: "",
                                    errorStyle: TextStyle(height: 0),
                                    suffixIcon: Icon(
                                      Icons.lock_outline_rounded,
                                      color: AppColor.primaryColor,
                                      size: 25,
                                    ),
                                    border: InputBorder.none,
                                  ),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Password cannot be empty';
                                    }
                                    // if (value !=
                                    //     viewModel.passwordController
                                    //         .toString()) {
                                    //   print(value);
                                    //   return 'Password does not match';
                                    // }
                                    return null;
                                  },
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 100,
                          ),
                        ],
                      ),
                    ),

                    GestureDetector(
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          viewModel.signUp();
                        }
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
                  ],
                ),
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
            },
          ),
        ],
      ),
    );
  }
}
