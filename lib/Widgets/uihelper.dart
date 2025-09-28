import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class UiHelper {
  static customButton({
    required VoidCallback callback,
    required String buttonname,
  }) {
    return SizedBox(
      height: 45,
      width: 300,
      child: ElevatedButton(
        onPressed: () {
          callback();
        },
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
        ),
        child: Text(
          buttonname,
          style: TextStyle(fontSize: 14, color: Colors.white),
        ),
      ),
    );
  }

  static customText({
    required String text,
    required double height,
    Color? color,
    FontWeight? fontWeight,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontSize: height,
        color: color ?? Color(0XFF5E5E5E),
        fontWeight: fontWeight,
      ),
    );
  }
}
