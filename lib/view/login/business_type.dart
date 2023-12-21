import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pemint_admin_app/utilities/app_colors.dart';
import 'package:pemint_admin_app/view/login/kyc.dart';
import 'package:pemint_admin_app/view/login/otp.dart';
import 'package:pemint_admin_app/view_model/business_controller.dart';

class BusinessType extends StatefulWidget {
  const BusinessType({Key? key}) : super(key: key);

  @override
  State<BusinessType> createState() => _BusinessTypeState();
}

class _BusinessTypeState extends State<BusinessType> {
  final BusinessController viewModel = Get.put(BusinessController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Obx(() {
      return Scaffold(
        resizeToAvoidBottomInset: false,
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(bottom: 50, left: 30, right: 30),
          child: GestureDetector(
            onTap: () {
              viewModel.addPartner();
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
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Basic Info',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontFamily: 'Cairo',
                      fontWeight: FontWeight.w400,
                      height: 0,
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
                            border: Border.all(color: AppColor.whiteColor),
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'Business Type',
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
                              viewModel.businessType.value,
                              style: const TextStyle(
                                color: Color(0xFF292D32),
                                fontSize: 20,
                                fontFamily: 'Cairo',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.dialog(Dialog(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Container(
                                    height: 350,
                                    width: Get.width * .8,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20, right: 20, top: 10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              GestureDetector(
                                                onTap: () {
                                                  Get.back();
                                                },
                                                child: const Icon(
                                                  Icons.close,
                                                  color: AppColor.blackColor,
                                                  size: 40,
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 30,
                                          ),
                                          Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: viewModel.businessTypes
                                                  .map(
                                                    (e) => Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              bottom: 30),
                                                      child: GestureDetector(
                                                        onTap: () {
                                                          viewModel.businessType
                                                              .value = e;
                                                          Get.back();
                                                        },
                                                        child: Text(
                                                          e,
                                                          style:
                                                              const TextStyle(
                                                            color: Color(
                                                                0xFF292D32),
                                                            fontSize: 20,
                                                            fontFamily: 'Cairo',
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                  .toList()),
                                        ],
                                      ),
                                    ),
                                  ),
                                ));
                              },
                              child: const Icon(
                                Icons.arrow_drop_down,
                                color: AppColor.contentColorBlue,
                                size: 40,
                              ),
                            )
                          ],
                        )),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Business Name',
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
                        controller: viewModel.businessName,
                        style: const TextStyle(
                          color: Color(0xFF292D32),
                          fontSize: 20,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.w600,
                        ),
                        keyboardType: TextInputType.name,
                        decoration:
                            const InputDecoration(border: InputBorder.none),
                      )),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Partner Type',
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
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              viewModel.partnerType.value,
                              style: TextStyle(
                                color: Color(0xFF292D32),
                                fontSize: 20,
                                fontFamily: 'Cairo',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.dialog(Dialog(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Container(
                                    height: 350,
                                    width: Get.width * .8,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20, right: 20, top: 10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              GestureDetector(
                                                onTap: () {
                                                  Get.back();
                                                },
                                                child: const Icon(
                                                  Icons.close,
                                                  color: AppColor.blackColor,
                                                  size: 40,
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 30,
                                          ),
                                          Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: viewModel.businessTypes
                                                  .map(
                                                    (e) => Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              bottom: 30),
                                                      child: GestureDetector(
                                                        onTap: () {
                                                          viewModel.partnerType
                                                              .value = e;
                                                          Get.back();
                                                        },
                                                        child: Text(
                                                          e,
                                                          style:
                                                              const TextStyle(
                                                            color: Color(
                                                                0xFF292D32),
                                                            fontSize: 20,
                                                            fontFamily: 'Cairo',
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                  .toList()),
                                        ],
                                      ),
                                    ),
                                  ),
                                ));
                              },
                              child: const Icon(
                                Icons.arrow_drop_down,
                                color: AppColor.contentColorBlue,
                                size: 40,
                              ),
                            )
                          ],
                        )),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Partner Type Name',
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
                        controller: viewModel.partnerName,
                        style: const TextStyle(
                          color: Color(0xFF292D32),
                          fontSize: 20,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.w600,
                        ),
                        keyboardType: TextInputType.name,
                        decoration:
                            const InputDecoration(border: InputBorder.none),
                      )),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Director Name',
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
                        controller: viewModel.directorName,
                        style: const TextStyle(
                          color: Color(0xFF292D32),
                          fontSize: 20,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.w600,
                        ),
                        keyboardType: TextInputType.name,
                        decoration:
                            const InputDecoration(border: InputBorder.none),
                      )),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Business Address',
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
                  Flexible(
                    child: Container(
                      width: Get.width,
                      height: 151,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Center(
                            child: TextFormField(
                          controller: viewModel.businessAddress,
                          maxLines: 4,
                          style: const TextStyle(
                            color: Color(0xFF292D32),
                            fontSize: 20,
                            fontFamily: 'Cairo',
                            fontWeight: FontWeight.w600,
                          ),
                          keyboardType: TextInputType.name,
                          decoration:
                              const InputDecoration(border: InputBorder.none),
                        )),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Joined On',
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
                        controller: viewModel.joindeOn,
                        style: const TextStyle(
                          color: Color(0xFF292D32),
                          fontSize: 20,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.w600,
                        ),
                        keyboardType: TextInputType.datetime,
                        decoration:
                            const InputDecoration(border: InputBorder.none),
                      )),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            )),
      );
    }));
  }
}
