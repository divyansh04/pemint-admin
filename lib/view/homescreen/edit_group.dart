import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pemint_admin_app/utilities/app_colors.dart';
import 'package:pemint_admin_app/view_model/dashboard_controller.dart';
import 'package:permission_handler/permission_handler.dart';

class EditGroup extends StatefulWidget {
  const EditGroup({
    Key? key,
  }) : super(key: key);

  @override
  State<EditGroup> createState() => _EditGroupState();
}

class _EditGroupState extends State<EditGroup> {
  final DashboardController viewModel = Get.put(DashboardController());

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Dialog(
          alignment: Alignment.bottomRight,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          backgroundColor: Color(0xFFF6F5FA),
          child: Container(
            height: Get.height / 1.75,
            width: Get.width / 1.2,
            child: Padding(
              padding: const EdgeInsets.all(0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: Get.width / 1.86,
                        height: 40,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: AppColor.contentColorBlue, width: 1),
                            borderRadius: BorderRadius.circular(5)),
                        child: Center(
                          child: Text(
                            'Z1 Society                                       ',
                            style: TextStyle(
                              color: Color(0xFF292D32),
                              fontSize: 14,
                              fontFamily: 'Cairo',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Icon(
                        Icons.close,
                        color: AppColor.redColor,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Container(
                        width: 38,
                        height: 38,
                        decoration: BoxDecoration(
                          color: AppColor.primaryColor,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Icon(
                          Icons.check,
                          color: AppColor.whiteColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Total Members- 2 ',
                          style: TextStyle(
                            color: Color(0xFF9888A4),
                            fontSize: 12,
                            fontFamily: 'Cairo',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      width: Get.width / 1.3,
                      color: AppColor.lightGreyColor,
                      height: 1,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Container(
                      height: 40,
                      width: Get.width / 1.4,
                      decoration: BoxDecoration(
                        color: AppColor.whiteColor,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                          child: Text(
                        '+ Add New Member',
                        style: TextStyle(
                          color: Color(0xFF00BBF2),
                          fontSize: 16,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.w400,
                        ),
                      )),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          'Sumit Singh',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF292D32),
                            fontSize: 18,
                            fontFamily: 'Cairo',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              bottomLeft: Radius.circular(12)),
                          color: Color(0xFFEEE9FF),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.delete_rounded,
                            color: AppColor.primaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          'Sumit Singh',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF292D32),
                            fontSize: 18,
                            fontFamily: 'Cairo',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              bottomLeft: Radius.circular(12)),
                          color: Color(0xFFEEE9FF),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.delete_rounded,
                            color: AppColor.primaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          'Sumit Singh',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF292D32),
                            fontSize: 18,
                            fontFamily: 'Cairo',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              bottomLeft: Radius.circular(12)),
                          color: Color(0xFFEEE9FF),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.delete_rounded,
                            color: AppColor.primaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          'Sumit Singh',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF292D32),
                            fontSize: 18,
                            fontFamily: 'Cairo',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              bottomLeft: Radius.circular(12)),
                          color: Color(0xFFEEE9FF),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.delete_rounded,
                            color: AppColor.primaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          'Sumit Singh',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF292D32),
                            fontSize: 18,
                            fontFamily: 'Cairo',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              bottomLeft: Radius.circular(12)),
                          color: Color(0xFFEEE9FF),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.delete_rounded,
                            color: AppColor.primaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
        ),
        GetBuilder(
            init: DashboardController(),
            builder: (controller) {
              if (controller.isLoading.value == true) {
                return Container(
                  color: Colors.black.withOpacity(0.5),
                  child: Center(
                    child: CircularProgressIndicator.adaptive(
                      backgroundColor: Colors.white.withOpacity(0.5),
                      valueColor: const AlwaysStoppedAnimation<Color>(
                          AppColor.primaryColor),
                    ),
                  ),
                );
              } else {
                return Container();
              }
            }),
      ],
    );
  }
}
