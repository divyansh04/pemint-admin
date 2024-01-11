import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:io';
import 'package:pemint_admin_app/utilities/app_colors.dart';
import 'package:pemint_admin_app/view/login/bank_details.dart';
import 'package:pemint_admin_app/view/login/otp.dart';
import 'package:pemint_admin_app/view_model/documents_controller.dart';

class KYC extends StatefulWidget {
  const KYC({Key? key}) : super(key: key);

  @override
  State<KYC> createState() => _KYCState();
}

class _KYCState extends State<KYC> {
  final DocumentsController controller = Get.put(DocumentsController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Stack(
        children: [
          SafeArea(
              child: Scaffold(
            resizeToAvoidBottomInset: false,
            bottomNavigationBar: Padding(
              padding: const EdgeInsets.only(bottom: 50, left: 30, right: 30),
              child: GestureDetector(
                onTap: () {
                  controller.uploadDocuments();
                },
                child: Container(
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
                  height: 51,
                  width: Get.width,
                  decoration: BoxDecoration(
                      color: AppColor.whiteColor,
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
            ),
            backgroundColor: AppColor.primaryColor,
            body: Padding(
              padding: const EdgeInsets.only(left: 40, right: 40, top: 50),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Welcome!',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontFamily: 'Cairo',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          TextSpan(
                            text:
                                'Please fill your Business detail’s to add you as a partner.',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'Cairo',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
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
                        SizedBox(
                          width: Get.width * .03,
                        ),
                        Container(
                          height: 5,
                          width: Get.width / 4.5,
                          decoration: BoxDecoration(
                              color: AppColor.whiteColor,
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        SizedBox(
                          width: Get.width * .03,
                        ),
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
                      'Address Proof',
                      style: TextStyle(
                        color: Color(0xFFF6F5FA),
                        fontSize: 20,
                        fontFamily: 'Cairo',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Front',
                      style: TextStyle(
                        color: Color(0xFFF6F5FA),
                        fontSize: 20,
                        fontFamily: 'Cairo',
                        fontWeight: FontWeight.w300,
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
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                controller.aadharCardFrontFile?.path ?? '-',
                                style: const TextStyle(
                                  color: Color(0xFF292D32),
                                  fontSize: 20,
                                  fontFamily: 'Cairo',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              GestureDetector(
                                  onTap: () {
                                    controller.selectfile(
                                        fileName:
                                            controller.aadharCardFrontFile,
                                        fileKey: 'AadharCardFrontSide');
                                  },
                                  child: Container(
                                    height: 30,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      color: AppColor.contentColorBlue,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        'Upload',
                                        style: TextStyle(
                                          color: Color(0xFF292D32),
                                          fontSize: 16,
                                          fontFamily: 'Cairo',
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                  ))
                            ],
                          )),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Back',
                      style: TextStyle(
                        color: Color(0xFFF6F5FA),
                        fontSize: 20,
                        fontFamily: 'Cairo',
                        fontWeight: FontWeight.w300,
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
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                controller.aadharCardBackFile?.path ?? '-',
                                style: const TextStyle(
                                  color: Color(0xFF292D32),
                                  fontSize: 20,
                                  fontFamily: 'Cairo',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              GestureDetector(
                                  onTap: () {
                                    controller.selectfile(
                                        fileName: controller.aadharCardBackFile,
                                        fileKey: 'AadharCardBackSide');
                                  },
                                  child: Container(
                                    height: 30,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      color: AppColor.contentColorBlue,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        'Upload',
                                        style: TextStyle(
                                          color: Color(0xFF292D32),
                                          fontSize: 16,
                                          fontFamily: 'Cairo',
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                  ))
                            ],
                          )),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      'Pan Card',
                      style: TextStyle(
                        color: Color(0xFFF6F5FA),
                        fontSize: 20,
                        fontFamily: 'Cairo',
                        fontWeight: FontWeight.w600,
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
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                controller.panCardFile?.path ?? '-',
                                style: const TextStyle(
                                  color: Color(0xFF292D32),
                                  fontSize: 20,
                                  fontFamily: 'Cairo',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              GestureDetector(
                                  onTap: () {
                                    controller.selectfile(
                                        fileName: controller.panCardFile,
                                        fileKey: 'Pancard');
                                  },
                                  child: Container(
                                    height: 30,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      color: AppColor.contentColorBlue,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        'Upload',
                                        style: TextStyle(
                                          color: Color(0xFF292D32),
                                          fontSize: 16,
                                          fontFamily: 'Cairo',
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                  ))
                            ],
                          )),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'CIN Number',
                      style: TextStyle(
                        color: Color(0xFFF6F5FA),
                        fontSize: 20,
                        fontFamily: 'Cairo',
                        fontWeight: FontWeight.w600,
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
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                controller.cinNumber?.path ?? '-',
                                style: const TextStyle(
                                  color: Color(0xFF292D32),
                                  fontSize: 20,
                                  fontFamily: 'Cairo',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              GestureDetector(
                                  onTap: () {
                                    controller.selectfile(
                                        fileName: controller.cinNumber,
                                        fileKey: 'CertificateOfIncorporation');
                                  },
                                  child: Container(
                                    height: 30,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      color: AppColor.contentColorBlue,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        'Upload',
                                        style: TextStyle(
                                          color: Color(0xFF292D32),
                                          fontSize: 16,
                                          fontFamily: 'Cairo',
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                  ))
                            ],
                          )),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Other Documents',
                      style: TextStyle(
                        color: Color(0xFFF6F5FA),
                        fontSize: 20,
                        fontFamily: 'Cairo',
                        fontWeight: FontWeight.w600,
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
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Shop Reg,Trade Licence\nPartnership Deed,GST Reg",
                                style: TextStyle(
                                  color: Color(0xFF292D32),
                                  fontSize: 16,
                                  fontFamily: 'Cairo',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              GestureDetector(
                                  onTap: () {
                                    controller.selectfile(
                                        fileName: controller.otherDocumentsFile,
                                        fileKey: 'GSTCertificate');
                                  },
                                  child: Container(
                                    height: 30,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      color: AppColor.contentColorBlue,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Upload',
                                        style: TextStyle(
                                          color: Color(0xFF292D32),
                                          fontSize: 16,
                                          fontFamily: 'Cairo',
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                  ))
                            ],
                          )),
                    ),
                  ],
                ),
              ),
            ),
          )),
          controller.isLoading.value == true
              ? Container(
                  color: Colors.black.withOpacity(0.5),
                  child: Center(
                    child: CircularProgressIndicator.adaptive(
                      backgroundColor: Colors.white.withOpacity(0.5),
                      valueColor: const AlwaysStoppedAnimation<Color>(
                          AppColor.primaryColor),
                    ),
                  ),
                )
              : Container()
        ],
      );
    });
  }
}
