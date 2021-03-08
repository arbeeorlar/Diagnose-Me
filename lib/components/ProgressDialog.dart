import 'dart:async';

import 'package:flutter/material.dart';

class DialogLoading extends StatelessWidget {

  final BuildContext context;
  final Widget subtitle;
  final Duration duration;
  Animation<Color> colorTween;

  DialogLoading({this.subtitle, this.context, this.duration});

  @override
  Widget build(BuildContext context) {
   // colorTween = controller.drive(new ColorTween(begin: Colors.greenAccent, end: Colors.deepOrange));
    if (duration != null && this.context != null) {
      // we use the parent context to close the dialog
      Timer(duration, () {
        Navigator.of(this.context, rootNavigator: true).pop();
      });

    }

    return Container(
      height: 170,
      padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 50,
            child: CircularProgressIndicator(
              backgroundColor: Colors.green,
              //valueColor: Colors.green,
              strokeWidth: 4.0,
            ),
          ),
          SizedBox(height: 15,),
          this.subtitle ?? Container(),
        ],
      ),
    );
  }
}



class SuccessDialog extends StatefulWidget {
  final Widget child;

  SuccessDialog(this.child);

  @override
  State<StatefulWidget> createState() => _SuccessDialog();

  static Future<void> show(BuildContext context, Widget child,
      {bool barrierDismissible = true}) async {
    return await showDialog(
        context: context,
        builder: (context) {
          return SuccessDialog(child);
        },
        barrierDismissible: barrierDismissible);

    /*await showGeneralDialog(context: context, pageBuilder: (context, anim, secondaryAnim) {
      return Container(child: Text("Be Like I will display as a card view, That will be very long and will make all things available for all"),);
    });*/
  }
}

class _SuccessDialog extends State<SuccessDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: widget.child,
    );

    /*return  Material(
      child: ,
    );*/
  }
}