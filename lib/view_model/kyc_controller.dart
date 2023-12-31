import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:file_picker/file_picker.dart';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:pemint_admin_app/networking/repository/auth_repository.dart';
import 'package:pemint_admin_app/view/login/bank_details.dart';

class KYCController extends GetxController {
  final _authRepository = AuthRepository();
  File? aadharCardFrontFile;
  File? aadharCardBackFile;
  File? panCardFile;
  File? cinNumber;
  File? otherDocumentsFile;

  void selectCINfile() async {
    cinNumber = await selectFile();
    if (cinNumber != null) {
      addOrUpdateValue('cinNumber', cinNumber!);
    }
    update();
  }

  void selectAadharCardFrontFile() async {
    aadharCardFrontFile = await selectFile();
    if (aadharCardFrontFile != null) {
      addOrUpdateValue('AadharCardFrontFile', aadharCardFrontFile!);
    }
    update();
  }

  void selectAadharCardBackFile() async {
    aadharCardBackFile = await selectFile();
    if (aadharCardBackFile != null) {
      addOrUpdateValue('AadharCardBackFile', aadharCardBackFile!);
    }
    update();
  }

  void selectPanCardFile() async {
    panCardFile = await selectFile();
    if (panCardFile != null) {
      addOrUpdateValue('Pancard', panCardFile!);
    }
    update();
  }

  void selectOtherDocumentsFile() async {
    otherDocumentsFile = await selectFile();
    if (otherDocumentsFile != null) {
      addOrUpdateValue('Otherdocuments', otherDocumentsFile!);
    }
    update();
  }

  Future<File?> selectFile() async {
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
  }

  Map parameter = {};
  void uploadDocuments() async {
    if (panCardFile == null || aadharCardFrontFile == null) {
      print('Please select Pan Card and Aadhar Card Front files.');
      return;
    }

    _authRepository.uploadDocuments(parameter: parameter);

    Get.to(const BankDetails());
  }
}
