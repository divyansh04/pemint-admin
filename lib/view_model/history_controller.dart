import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:pemint_admin_app/helper/ToastHelper.dart';
import 'package:pemint_admin_app/model/api_response/create_demand_response.dart';
import 'package:pemint_admin_app/model/api_response/dashboard_data_response.dart';
import 'package:pemint_admin_app/model/api_response/demands_against_partner_response.dart';
import 'package:pemint_admin_app/networking/repository/user_repository.dart';
import 'package:pemint_admin_app/view/homescreen/create_group.dart';
import 'package:permission_handler/permission_handler.dart';

import '../networking/SharedPref.dart';

class HistoryController extends GetxController {
  final isLoading = false.obs;
  final _userRepository = UserRepository();
  final data = Rx<DemandsAgainstPartnerData?>(null);
  void getAllDemandsData() async {
    isLoading.value = true;
    update();
    Map parameter = {
      "partnerId": SharedPref.partnerId,

    };
    try {
      var res = await _userRepository.getAllDemands(parameter: parameter);
      if (res.statusCode == 200) {
        data.value = DemandsAgainstPartnerData.fromJson(res.data) ;
        print(res);
      }
    } catch (e) {
      print(e.toString());
      ToastHelper().showErrorToast(message: "Something Went Wrong. Try again.");
    }

    isLoading.value = false;
    update();
  }
}

