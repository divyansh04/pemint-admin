import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pemint_admin_app/view/login/initial_screen.dart';

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
    super.initState();
  }

  bool isLogin = false;
  getLoginStatus() async {
    isLogin = await SharedPref().isLogin() ?? false;
    setState(() {});
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
        home: isLogin ? HomeScreenContact() : InitialScreen());
  }
}
