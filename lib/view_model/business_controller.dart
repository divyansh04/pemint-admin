import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mobile_number/mobile_number.dart';
import 'package:pemint_admin_app/helper/ToastHelper.dart';
import 'package:pemint_admin_app/model/api_response/add_partner_response.dart';
import 'package:pemint_admin_app/model/api_response/login_response.dart';
import 'package:pemint_admin_app/model/api_response/signup_response.dart';
import 'package:pemint_admin_app/networking/SharedPref.dart';
import 'package:pemint_admin_app/networking/repository/auth_repository.dart';
import 'package:pemint_admin_app/view/homescreen/homescreen_contact.dart';
import 'package:pemint_admin_app/view/login/PvtLtd_Partnership.dart';
import 'package:pemint_admin_app/view/login/business_type.dart';
import 'package:pemint_admin_app/view/login/kyc.dart';
import 'package:pemint_admin_app/view/login/login.dart';
import 'package:pemint_admin_app/view/login/otp.dart';
import 'package:pemint_admin_app/view/login/reset_pass_otp.dart';
import 'package:pemint_admin_app/view/login/reset_password.dart';
import 'package:pemint_admin_app/view/login/sole_prop.dart';

class BusinessController extends GetxController {
  RxString businessType = 'Individual'.obs;
  RxString partnerType = 'Small Business'.obs;

  final TextEditingController businessName = TextEditingController();
  final TextEditingController partnerName = TextEditingController();
  final TextEditingController directorName = TextEditingController();
  final TextEditingController businessAddress = TextEditingController();
  final TextEditingController joindeOn = TextEditingController();

  final _authRepository = AuthRepository();

  RxBool isLoading = false.obs;

  List<String> businessTypes = [
    'Individual',
    'Sole Proprietorship',
    'Partnership',
    'Private Limited',
  ];

  void addPartner() async {
    isLoading.value = true;
    update();
    final userId = SharedPref().getUserId();

    Map parameter = {
      "BusinessName": businessName.text,
      "BusinessType": businessType.value,
      "PartnerType": partnerType.value,
      "DirectorName": directorName.text,
      "HeadOfficeAddress": businessAddress.text,
      "PartnerState": "California",
      "City": "San Francisco",
      "Pincode": "94101",
      "OfficialMailId": "info@abc.com",
      "BusinessNameBankAccount": "ABC Company Pvt Ltd",
      "AccountType": "Savings",
      "BankAccountNumber": "1234567890",
      "BankIFSCCode": "ABCD1234",
      "CompanyIncorporationUIN": "UIN1234",
      "GSTNumber": "GST1234",
      "PANNumber": "PAN1234",
      "PartnerLogo": "https://example.com/updated_cancelled_cheque",
      "UserId": userId
    };
    print(parameter.toString());
    try {
      var res = await _authRepository.addPartner(parameter: parameter);
      if (res.statusCode == 200) {
        final addPartnerResponse = AddPartnerData.fromJson(res.data);
        await SharedPref().savePartnerId(addPartnerResponse.partnerId);
        switch (businessType.value) {
          case 'Individual':
            Get.to(const KYC());
            break;
          case 'Sole Proprietorship':
            Get.to(const Sole_Prop());
            break;
          case 'Partnership':
            Get.to(const Partnership_PVT());
            break;
          case 'Private Limited':
            Get.to(const Partnership_PVT());
            break;
          default:
            Get.to(const KYC());
            break;
        }
      }
    } catch (e) {
      print(e.toString());
      ToastHelper().showErrorToast(message: "Something Went Wrong. Try again.");
    }

    isLoading.value = false;
    update();
  }

  @override
  void dispose() {
    businessName.dispose();
    partnerName.dispose();
    directorName.dispose();
    businessAddress.dispose();
    joindeOn.dispose();
    super.dispose();
  }
}
