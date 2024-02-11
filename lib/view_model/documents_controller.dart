import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:file_picker/file_picker.dart';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:pemint_admin_app/helper/ToastHelper.dart';
import 'package:pemint_admin_app/model/api_response/user_me_response.dart';
import 'package:pemint_admin_app/networking/SharedPref.dart';
import 'package:pemint_admin_app/networking/repository/auth_repository.dart';
import 'package:pemint_admin_app/view/homescreen/documents_underprocess.dart';
import 'package:pemint_admin_app/view/homescreen/homescreen_contact.dart';
import 'package:pemint_admin_app/view/login/bank_details.dart';
import 'package:pemint_admin_app/view/login/initial_screen.dart';

class DocumentsController extends GetxController {
  final _authRepository = AuthRepository();
  File? aadharCardFrontFile;
  File? aadharCardBackFile;
  File? panCardFile;
  File? authorizationLetter;
  File? cinNumber;
  File? gstNumber;
  File? otherDocumentsFile;
  File? cancelledCheque;



  RxBool isLoading = false.obs;

  void selectfile({required File? fileName, required String fileKey}) async {
    fileName = await pickFile();
    if (fileName != null) {
      addOrUpdateValue(fileKey, fileName);
      Fluttertoast.showToast(msg: "File Selected Succesfully", toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          textColor: Colors.white,
          fontSize: 16.0);
    }
    update();
  }

  Future<File?> pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      return File(result.files.single.path!);
    } else {
      return null;
    }
  }

  void addOrUpdateValue(String key, File value) {
    if (parameter.containsKey(key)) {
      parameter[key] = value;
    } else {
      parameter[key] = value;
    }
    print(parameter.toString());
  }

  Map<String, File> parameter = {};
  void uploadDocuments() async {
    // if (panCardFile == null || aadharCardFrontFile == null) {
    //   print('Please select Pan Card and Aadhar Card Front files.');
    //   return;
    // }
    final response =
        await _authRepository.uploadDocuments(parameter: parameter);

    if (response.statusCode == 200) {
      Get.to(const InitialScreen());
    } else {
      ToastHelper().showErrorToast(message: "Something Went Wrong. Try again.");
    }
  }

  Future<void> getUserMeResponse() async {
    isLoading.value = true;
    update();
    try {
      var res = await _authRepository.getUserMeData();
      if (res.statusCode == 200) {
        final userMeData = UserMeData.fromJson(res.data);
        await SharedPref().saveUserId(userMeData.user.userId);
        await SharedPref().savePartnerId(userMeData.partner.partnerId);
        if (userMeData.partner.partnerId.isNotEmpty) {
          if (userMeData.partner.partnerStatus == "Active") {
            Get.to(HomeScreenContact());
          } else {
            print(userMeData.partner.partnerStatus);
            Get.to(Documents_UnderProcess());
          }
        } else {
          ToastHelper()
              .showErrorToast(message: "Something Went Wrong. Try again.");
        }
      }
    } catch (e) {
      print(e.toString());
      ToastHelper().showErrorToast(message: "Something Went Wrong. Try again.");
    }

    isLoading.value = false;
    update();
  }
}
