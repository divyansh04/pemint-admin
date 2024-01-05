import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pemint_admin_app/utilities/app_colors.dart';
import 'package:pemint_admin_app/view/homescreen/homescreen_dashboard.dart';
import 'package:pemint_admin_app/view_model/business_controller.dart';

class BankDetails extends StatefulWidget {
  const BankDetails({Key? key}) : super(key: key);

  @override
  State<BankDetails> createState() => _BankDetailsState();
}

class _BankDetailsState extends State<BankDetails> {
  final BusinessController viewModel = Get.put(BusinessController());
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
                  viewModel.updatePartner();
                },
                child: Container(
                  height: 51,
                  width: Get.width,
                  decoration: BoxDecoration(
                      color: AppColor.whiteColor,
                      borderRadius: BorderRadius.circular(20)),
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
                    Text(
                      'Please fill your Bank Account details.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Cairo',
                        fontWeight: FontWeight.w400,
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
                      'Enter Account Number',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Cairo',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Note: Please add your current bank account for\nPvt Ltd,LLP or Sole Proprietorship',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w400),
                        )
                      ],
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
                          controller: viewModel.accountNumber,
                          style: const TextStyle(
                            color: Color(0xFF292D32),
                            fontSize: 20,
                            fontFamily: 'Cairo',
                            fontWeight: FontWeight.w600,
                          ),
                          keyboardType: TextInputType.name,
                          decoration: const InputDecoration(
                              hintText: '*************',
                              hintStyle: TextStyle(
                                color: Color(0xFF292D32),
                                fontSize: 20,
                                fontFamily: 'Cairo',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                              border: InputBorder.none),
                        )),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Re enter Account Number',
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
                          controller: viewModel.reAccountNumber,
                          style: const TextStyle(
                            color: Color(0xFF292D32),
                            fontSize: 20,
                            fontFamily: 'Cairo',
                            fontWeight: FontWeight.w600,
                          ),
                          keyboardType: TextInputType.name,
                          decoration: const InputDecoration(
                              hintText: '*************',
                              hintStyle: TextStyle(
                                color: Color(0xFF292D32),
                                fontSize: 20,
                                fontFamily: 'Cairo',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                              border: InputBorder.none),
                        )),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'IFSC Code',
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
                        padding: const EdgeInsets.only(left: 20, right: 10),
                        child: Center(
                            child: TextFormField(
                          controller: viewModel.ifscCode,
                          style: const TextStyle(
                            color: Color(0xFF292D32),
                            fontSize: 20,
                            fontFamily: 'Cairo',
                            fontWeight: FontWeight.w600,
                          ),
                          keyboardType: TextInputType.name,
                          decoration: const InputDecoration(
                              hintText: '*************',
                              hintStyle: TextStyle(
                                color: Color(0xFF292D32),
                                fontSize: 20,
                                fontFamily: 'Cairo',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                              border: InputBorder.none),
                        )),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Account Holder Name',
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
                        padding: const EdgeInsets.only(left: 20, right: 10),
                        child: Center(
                            child: TextFormField(
                          controller: viewModel.accountHolderName,
                          style: const TextStyle(
                            color: Color(0xFF292D32),
                            fontSize: 20,
                            fontFamily: 'Cairo',
                            fontWeight: FontWeight.w600,
                          ),
                          keyboardType: TextInputType.name,
                          decoration: const InputDecoration(
                              hintStyle: TextStyle(
                                color: Color(0xFF292D32),
                                fontSize: 20,
                                fontFamily: 'Cairo',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                              border: InputBorder.none),
                        )),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Cancelled Cheque',
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
                              const Text(
                                "*****",
                                style: TextStyle(
                                  color: Color(0xFF292D32),
                                  fontSize: 20,
                                  fontFamily: 'Cairo',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              GestureDetector(
                                  onTap: () {
                                    viewModel.selectCancelledCheque();
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
                  ],
                ),
              ),
            ),
          )),
          viewModel.isLoading.value == true
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
