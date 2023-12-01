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
import 'package:pemint_admin_app/view/login/otp.dart';

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
      if (res.statusCode == 200) {
        print(res);
        numberController.text = phone;
        SignupData loginData = SignupData.fromJson(res.data);
        await SharedPref().setSession(loginData.session);
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
      "username": "+91${numberController.text}",
      "password": passwordController.text
    };

    try {
      var res = await _authRepository.loginApi(parameter: parameter);
      if (res.statusCode == 200) {
        print(res);
        LoginData loginData = LoginData.fromJson(res.data);
        await SharedPref().setAccessToken(loginData.authenticationResult.accessToken);
        await SharedPref().setIdToken(loginData.authenticationResult.idToken);
        await SharedPref().setRefreshToken(loginData.authenticationResult.refreshToken);
        Get.to(const HomeScreenContact());
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
        print(res);
        numberController.text = phone;
        SignupData loginData = SignupData.fromJson(res.data);
        await SharedPref().setSession(loginData.session);
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
        "username": "+91${numberController.text}",
        "confirmation_code": otpController.text
      };

      isLoading.value = true;
      update();
      try {
        var res = await _authRepository.verifyOTP(parameter: parameter);
        if (res.statusCode == 200) {
          // VerifyOtpData verifyOtpData = VerifyOtpData.fromJson(res.data);
          // SharedPref()
          //     .setAccessToken(verifyOtpData.authenticationResult.accessToken);

          // SharedPref().setIdToken(verifyOtpData.authenticationResult.idToken);
          // SharedPref()
          //     .setRefreshToken(verifyOtpData.authenticationResult.refreshToken);
          // await saveTokenExpiryTimestamp(
          //     verifyOtpData.authenticationResult.expiresIn);

          //   var customerRes = await _userRepository.customerMeApi();

          //   if (customerRes.statusCode == 200) {
          //     await SharedPref().saveLogin(true);
          //     CustomerMeData customerMeData =
          //         CustomerMeData.fromJson(customerRes.data);
          //     SharedPref().setCustomerMeInfo(customerMeData);
          //     SharedPref().setCustomerId(customerMeData.customer.customerId);

          Get.to(const BusinessType());
          //   }
          // } else if (res.statusCode == 400) {
          //   errorText.value = "Invalid OTP";
          //   update();
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

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}
