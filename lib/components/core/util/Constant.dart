import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:self_diagnose/components/core/themes/AppColors.dart';

class Constant {
  /////////////DATABASE/////////////////
  //////////////////////////////////////
  static get AILMENTS => "ailments";
  static get SYMPTOMS => "symptoms";

  static get CAUSES => "causes";

  static get TREATMENT => "treatment";

  static get DOSAGE => "dosage";

  static get prevention => "requestType";

  static buttonPreview(
      {double? height,
      double? width,
      required Widget child,
      Color? background,
      Function()? onPressed}) {
    final ButtonStyle flatButtonStyle = TextButton.styleFrom(
      minimumSize: Size(width ?? double.infinity, height ?? 50),
      backgroundColor: background ?? AppColors.primary,
      padding: EdgeInsets.all(0),
    );
    return TextButton(
      style: flatButtonStyle,
      onPressed: onPressed,
      child: child,
    );
  }

  buttonRaised(double _height, double _width) {
    return MaterialButton(
      onPressed: () {},
      height: _height,
      minWidth: _width,
      color: Colors.grey,
      padding: EdgeInsets.all(0),
      child: Text(
        "some text",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
