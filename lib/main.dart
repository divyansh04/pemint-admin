// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pemint_admin_app/view/homescreen/documents_underprocess.dart';
import 'package:pemint_admin_app/view/login/PvtLtd_Partnership.dart';
import 'package:pemint_admin_app/view/login/bank_details.dart';
import 'package:pemint_admin_app/view/login/initial_screen.dart';
import 'package:pemint_admin_app/view/login/kyc.dart';
import 'package:pemint_admin_app/view/login/sole_prop.dart';
import 'package:permission_handler/permission_handler.dart';

import 'networking/SharedPref.dart';
import 'view/homescreen/homescreen_contact.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    getLoginStatus();
    // _buildPermissionScreen();
    super.initState();
  }

  bool isLogin = false;
  getLoginStatus() async {
    isLogin = await SharedPref().isLogin() ?? false;
    setState(() {});
  }

  Future<void> _buildPermissionScreen() async {
    final _status = await Permission.contacts.status;
    if (_status == PermissionStatus.denied) {
      await Permission.contacts.request();
    }
    if (_status == PermissionStatus.permanentlyDenied) {
      showDialog<void>(
          context: context,
          barrierColor: Colors.grey.withOpacity(0.5),
          barrierDismissible: false,
          builder: (BuildContext context) {
            return WillPopScope(
                onWillPop: () async => false,
                child: const Dialog(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    child: Center(
                      child: SizedBox(
                          height: 80,
                          width: 80,
                          child: Text('Contacts Permission is required !')),
                    )));
          });
    }
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home:
        // isLogin ? HomeScreenContact() :
         InitialScreen());
  }
}
