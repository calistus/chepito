import 'package:flutter/material.dart';

import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:fluttertoast/fluttertoast.dart';

class UIUtils {
  static void showToast(String toastMessage, {Toast? toastLength}) {
    Fluttertoast.showToast(
        msg: toastMessage, toastLength: toastLength ?? Toast.LENGTH_LONG);
  }

  static Widget showCircularLoader(
      {String message = "", Color color = Colors.blueGrey}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        SpinKitWave(color: color, type: SpinKitWaveType.start),
        const SizedBox(
          height: 20,
        ),
        Center(child: Text(message)),
      ],
    );
  }

  static Widget showLinearLoader(String message) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          height: 200.0,
          child: Stack(
            children: <Widget>[
              Center(
                child: SizedBox(
                  width: 200,
                  height: 200,
                  child: new LinearProgressIndicator(),
                ),
              ),
              Center(child: Text(message)),
            ],
          ),
        ),
      ],
    );
  }

  static Future<void> showAlertDialog(
      BuildContext context, String title, String message,
      [Widget? screen]) {
    // set up the buttons

    Widget continueButton = TextButton(
      child: Text("Ok"),
      onPressed: () {
        if (screen != null) {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (BuildContext context) => screen));
        } else {
          Navigator.pop(context);
        }
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text(title),
      content: Text(message),
      actions: [
        continueButton,
      ],
    );

    // show the dialog
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  static Widget showSimpleLoader({Color? color}) {
    return Center(
      child: CircularProgressIndicator(
        color: color,
      ),
    );
  }

  static Widget showError(
      {required String message, Color textColor = Colors.blueGrey}) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          message,
          style: TextStyle(color: textColor),
        ),
      ),
    );
  }
}
