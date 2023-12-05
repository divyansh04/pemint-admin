import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pemint_admin_app/helper/ToastHelper.dart';
import 'package:pemint_admin_app/networking/repository/user_repository.dart';

class DashboardController extends GetxController {
  final isLoading = false.obs;
  final _userRepository = UserRepository();
  final TextEditingController partnerIdController = TextEditingController();
  final TextEditingController customermobileController = TextEditingController();
  final TextEditingController customernameController = TextEditingController();
  final TextEditingController amountController = TextEditingController();
  final TextEditingController dueDateController = TextEditingController();
  final TextEditingController invoiceNumberController = TextEditingController();
  final TextEditingController invoiceDateController = TextEditingController();
  final TextEditingController customerEmailController = TextEditingController();
  final TextEditingController groupnameController = TextEditingController();
  final TextEditingController noteController = TextEditingController();

  RxBool loading = false.obs;

  void createDemand() async {
    isLoading.value = true;
    update();

    Map parameter = {
      "PartnerId": "123111",
      "CustomerMobileNo": "8130524691",
      "CustomerName": "Harsh",
      "Amount": 1,
      "DueDate": "2023-11-11",
      "InvoiceNo": "7654",
      "InvoiceDate": "2023-11-11",
      "CustomerEmailId": "hb8130524691@gmail.com",
      "GroupName": "Society",
      "Note": "Create New Demand"
    };

    try {
      var res = await _userRepository.createDemand(parameter: parameter);
      if (res.statusCode == 200) {
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
