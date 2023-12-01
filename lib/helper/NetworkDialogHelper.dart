import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class NetworkDialog {
  static Future<void> showLoadingDialog(
      BuildContext context, GlobalKey key) async {
    return showDialog<void>(
        context: context,
        // barrierColor: Colors.grey.withOpacity(0.5),
        barrierDismissible: false,
        builder: (BuildContext context) {
          return WillPopScope(
              onWillPop: () async => false,
              child: Dialog(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  child: Center(
                    child: Container(
                      height: 80,
                      width: 80,
                      child: Lottie.asset(
                        'assets/loader.json',
                      ),
                    ),
                  )));
        });
  }
}
