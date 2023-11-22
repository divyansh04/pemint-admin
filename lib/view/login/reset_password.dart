import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pemint_admin_app/utilities/app_colors.dart';
import 'package:pemint_admin_app/view/login/business_type.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          bottomNavigationBar: Padding(
            padding: EdgeInsets.only(bottom: 50, left: 30, right: 30),
            child: GestureDetector(
              onTap: () {
                Get.to('');
              },
              child: Container(
                child: Center(
                  child: Text(
                    'Submit',
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Reset your Password',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.w400,
                  ),
                ),

                SizedBox(
                  height: 30,
                ),
                Text(
                  'Enter New Password',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.w600,

                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: Get.width,
                  height: 51,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: TextFormField(textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Color(0xFF292D32),
                            fontSize: 20,
                            fontFamily: 'Cairo',
                            fontWeight: FontWeight.w600,

                          ),
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(

                              alignLabelWithHint: true,
                              hintStyle: TextStyle(
                                color: Color(0xFF7E6491),
                                fontSize: 20,
                                fontFamily: 'Cairo',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                              border: InputBorder.none),
                        ),
                      )),
                ),
                SizedBox(height: 30,),
                Text(
                  'Re Enter Password',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.w600,

                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: Get.width,
                  height: 51,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: TextFormField(textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Color(0xFF292D32),
                            fontSize: 20,
                            fontFamily: 'Cairo',
                            fontWeight: FontWeight.w600,

                          ),
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(

                              alignLabelWithHint: true,
                              hintStyle: TextStyle(
                                color: Color(0xFF7E6491),
                                fontSize: 20,
                                fontFamily: 'Cairo',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                              border: InputBorder.none),
                        ),
                      )),
                ),

              ],
            ),
          ),
        ));
  }
}
