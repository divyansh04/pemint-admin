import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mobile_number/mobile_number.dart';
import 'package:pemint_admin_app/helper/ToastHelper.dart';
import 'package:pemint_admin_app/model/api_response/login_response.dart';
import 'package:pemint_admin_app/model/api_response/signup_response.dart';
import 'package:pemint_admin_app/networking/SharedPref.dart';
import 'package:pemint_admin_app/networking/repository/auth_repository.dart';
import 'package:pemint_admin_app/view/homescreen/homescreen_contact.dart';
import 'package:pemint_admin_app/view/login/business_type.dart';
import 'package:pemint_admin_app/view/login/login.dart';
import 'package:pemint_admin_app/view/login/otp.dart';
import 'package:pemint_admin_app/view/login/reset_pass_otp.dart';
import 'package:pemint_admin_app/view/login/reset_password.dart';

class MobRegController extends GetxController {
  final currentPageIndex = 0.obs;
  final isLoading = false.obs;
  PageController pageController = PageController();

  final _authRepository = AuthRepository();
  final GlobalKey<State> _keyLoader = GlobalKey<State>();

  final phoneFormKey = GlobalKey<FormState>();
  final otpFormKey = GlobalKey<FormState>();

  PageController get getPageController => pageController;
  int get currentIndex => currentPageIndex.value;

  String phone1 = '';
  String phone2 = '';

  final TextEditingController numberController = TextEditingController();
  final TextEditingController otpController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController password2Controller = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController stateController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController pincodeController = TextEditingController();
  final TextEditingController roleIDController = TextEditingController();

  RxBool loading = false.obs;

  void signUp() async {
    isLoading.value = true;
    update();
    String phone = numberController.text;

    Map parameter = {
      "email": emailController.text,
      "password": passwordController.text,
      "phone_number": numberController.text,
      "name": nameController.text,
      "address": addressController.text,
      "state": stateController.text,
      "city": cityController.text,
      "pincode": pincodeController.text,
      "roleID": roleIDController.text
    };

    try {
      var res = await _authRepository.signUpApi(parameter: parameter);
      if (res.statusCode == 200 || res.statusCode == 422) {
        sendOTP();
        Get.to(const Enter_OTP());
      }
    } catch (e) {
      print(e.toString());
      ToastHelper().showErrorToast(message: "Something Went Wrong. Try again.");
    }

    isLoading.value = false;
    update();
  }

  void login() async {
    isLoading.value = true;
    update();

    Map parameter = {
      "username": numberController.text,
      "password": passwordController.text
    };

    try {
      var res = await _authRepository.loginApi(parameter: parameter);
      if (res.statusCode == 200) {
        print(res);
        LoginData loginData = LoginData.fromJson(res.data);
        await SharedPref()
            .setAccessToken(loginData.authenticationResult.accessToken);
        await SharedPref().setIdToken(loginData.authenticationResult.idToken);
        await SharedPref()
            .setRefreshToken(loginData.authenticationResult.refreshToken);
        await SharedPref().saveLogin(true);
              // if (res.statusCode == 200) {
      //   print(res,);print(res.statusCode);
      //   numberController.text = phone;
      //   SignupData signUpData = SignupData.fromJson(res.data);
      //   Get.to(const BusinessType());
      // }
        Get.to(HomeScreenContact());
      }
    } catch (e) {
      print(e.toString());
      ToastHelper().showErrorToast(message: "Something Went Wrong. Try again.");
    }

    isLoading.value = false;
    update();
  }

  final errorText = " ".obs;
  void sendOTP() async {
    isLoading.value = true;
    update();
    String phone = numberController.text;

    Map parameter = {
      "username": numberController.text,
    };

    try {
      var res = await _authRepository.sendOTP(parameter: parameter);
      if (res.statusCode == 200) {
        numberController.text = phone;
      }
    } catch (e) {
      print(e.toString());
      ToastHelper().showErrorToast(message: "Something Went Wrong. Try again.");
    }
    isLoading.value = false;
    update();
  }

  void verifyOtp() async {
    otpFormKey.currentState!.save();
    if (otpFormKey.currentState!.validate() == true) {
      final sessionId = await SharedPref().getSession();
      Map parameter = {
        "username": numberController.text,
        "confirmation_code": otpController.text
      };

      isLoading.value = true;
      update();
      try {
        var res = await _authRepository.verifyOTP(parameter: parameter);
        if (res.statusCode == 200) {
          //TODO DIALOG BOX
        }
      } catch (e) {
        print(e.toString());
        ToastHelper()
            .showErrorToast(message: "Something Went Wrong. Try again.");
      }
    }
    isLoading.value = false;
    update();
  }

  void requestResetPassword() async {
    isLoading.value = true;
    update();

    Map parameter = {
      "username": numberController.text,
    };

    try {
      var res = await _authRepository.forgotPassword(parameter: parameter);
      if (res.statusCode == 200) {
        Get.to(const ResetPasswordOTP());
      }
    } catch (e) {
      print(e.toString());
      ToastHelper().showErrorToast(message: "Something Went Wrong. Try again.");
    }

    isLoading.value = false;
    update();
  }

  void resetPassword() async {
    isLoading.value = true;
    update();

    Map parameter = {
      "username": numberController.text,
      "otp": otpController.text,
      "newPassword": passwordController.text
    };

    try {
      var res = await _authRepository.resetPassword(parameter: parameter);
      if (res.statusCode == 200) {
        Get.to(Login());
        ToastHelper().showToast(message: "Password Reset Successful");
      }
    } catch (e) {
      print(e.toString());
      ToastHelper().showErrorToast(message: "Something Went Wrong. Try again.");
      Get.back();
      Get.back();
    }

    isLoading.value = false;
    update();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}
