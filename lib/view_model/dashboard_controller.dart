import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:pemint_admin_app/helper/ToastHelper.dart';
import 'package:pemint_admin_app/model/api_response/create_demand_response.dart';
import 'package:pemint_admin_app/model/api_response/dashboard_data_response.dart';
import 'package:pemint_admin_app/networking/repository/user_repository.dart';
import 'package:pemint_admin_app/view/homescreen/create_group.dart';
import 'package:permission_handler/permission_handler.dart';

import '../networking/SharedPref.dart';

class DashboardController extends GetxController {
  final isLoading = false.obs;
  final _userRepository = UserRepository();
  final data = Rx<DashboardData?>(null);
  void getDashboardData() async {
    isLoading.value = true;
    update();
    Map parameter = {
    "partnerId": SharedPref.partnerId,
      "fromDate": "2023-12-01",
      "toDate": "2023-12-18",
    };
    try {
      var res = await _userRepository.getDashboardData(parameter: parameter);
      if (res.statusCode == 200) {
        data.value = DashboardData.fromJson(res.data);
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
