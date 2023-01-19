import 'package:flutter/material.dart';
import 'package:self_diagnose/components/core/themes/AppColors.dart';
import 'package:self_diagnose/components/core/themes/AppStyles.dart';

import '../util/Constant.dart';
import 'DialogLoading.dart';
import 'SuccessDialog.dart';
import 'progressindicator.dart';
//import 'package:workmanager/workmanager.dart';

class GeneralWidgets {
  void showError(BuildContext context,
      {bool barrierDismissible = true,
      String? title,
      String? message,
      String buttonText = "CLOSE",
      VoidCallback? onButtonTapped,
      VoidCallback? errorInfoTapped}) {
    showDialog(
      context: context,
      barrierDismissible: barrierDismissible,
      builder: (context) {
        return AlertDialog(
          backgroundColor: AppColors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          title: Row(
            children: [
              Expanded(
                child: Text(
                  title ?? "",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: AppColors.formError),
                ),
              ),
            ],
          ),
          content: Text(
            message ?? "",
            style: TextStyle(color: AppColors.primary),
            textAlign: TextAlign.center,
          ),
          actions: <Widget>[
            Constant.buttonPreview(
                onPressed: () {
                  if (onButtonTapped != null) onButtonTapped();
                  Navigator.of(context, rootNavigator: true).pop();
                },
                child: Text(buttonText),
                background: AppColors.primary),
          ],
        );
      },
    );
  }

  void showConfirmDialog(BuildContext context,
      {String? title,
      String? message,
      String positiveText = "Confirm",
      VoidCallback? onPositiveTapped}) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          title: Row(
            children: [
              Expanded(
                child: Text(
                  title ?? "",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: AppColors.formError),
                ),
              ),
            ],
          ),
          content: Text(
            message ?? "",
            textAlign: TextAlign.center,
          ),
          actions: <Widget>[
            Expanded(
              child: Constant.buttonPreview(
                onPressed: () {
                  Navigator.of(context, rootNavigator: true).pop();
                },
                child: Text("Close"),
              ),
            ),
            Expanded(
              child: Constant.buttonPreview(
                onPressed: () {
                  onPositiveTapped!();
                },
                child: Text(positiveText),
              ),
            ),
          ],
        );
      },
    );
  }

  showSnackBar(GlobalKey<ScaffoldState> scaffoldKey, {String? message}) {
    ScaffoldMessenger.of(scaffoldKey.currentContext!).showSnackBar(
        SnackBar(content: Text(message ?? ""), backgroundColor: Colors.orange));
  }

//  logout(BuildContext context) async {
//    // Navigator.of(context, rootNavigator: true).pop();
////    Workmanager.cancelAll();
//    await Navigator.of(context).pushAndRemoveUntil(
//        MaterialPageRoute(builder: (context) => LoginScreen()), (
//        Route<dynamic> route) => false);
//  }
//
  showSuccessDialog1(BuildContext context, String message, {Function? onClick}) {
    SuccessDialog.show(
      context,
      successDialogContent(context, message, onClick),
      barrierDismissible: false,
    );
  }

  Widget successDialogContent(
      BuildContext context, String message, Function? onClick) {
    return Container(
      height: 200,
      padding: EdgeInsets.only(top: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Done!",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 14,
                fontFamily: 'Source Sans Pro',
              )),
          SizedBox(height: 10),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            alignment: Alignment.center,
            child: Text(message != null ? message : "Ok",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontSize: 16,
                  fontFamily: 'Source Sans Pro',
                )),
          ),
          SizedBox(height: 17),
          Container(
            width: double.infinity,
            height: 38,
            margin: EdgeInsets.only(top: 30, bottom: 20, left: 30, right: 30),
            child: Constant.buttonPreview(
              onPressed: onClick as dynamic Function()? ??
                  () {
                    Navigator.of(context, rootNavigator: true).pop();
                  },
              child: Text("Ok"),
            ),
          ),
        ],
      ),
    );
  }

  showProgressDialog(BuildContext context, GlobalKey _scaffoldKey) async {
    await showDialog(
        context: context,
        builder: (context) {
          return ProgressIndicatorPrimary();
        });
  }

  // TODO (Lekan): We need a better way to display loading widget & states
  void showLoading(BuildContext context, {bool close = false, String? message}) {
    if (close) {
      Navigator.of(context, rootNavigator: true).pop();
    } else {
      SuccessDialog.show(
        context,
        WillPopScope(
          onWillPop: () async => false,
          child: DialogLoading(
            subtitle: Container(
              child: Text(
                "",
                style: AppStyles.semiBoldText(context),
              ),
            ),
          ),
        ),
        barrierDismissible: false,
      );
    }
  }
}
