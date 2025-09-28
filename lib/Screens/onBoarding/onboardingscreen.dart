import 'package:flutter/material.dart';
import 'package:whatsapp_app/Screens/Login/loginscreen.dart';
import 'package:whatsapp_app/Widgets/uihelper.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/image 1.png"),
            SizedBox(height: 20),
            UiHelper.customText(
              text: "Welcome to Whatsapp",
              height: 20,
              color: Color(0XFF000000),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.customText(text: "Read out", height: 14),
                UiHelper.customText(
                  text: " Privacy Policy.",
                  height: 14,
                  color: const Color.fromARGB(255, 0, 119, 216),
                ),
                UiHelper.customText(
                  text: "Tap 'Agree and continue'",
                  height: 14,
                ),
              ],
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.customText(text: "to accept the", height: 14),
                UiHelper.customText(
                  text: "Teams of Service",
                  height: 14,
                  color: const Color.fromARGB(255, 0, 119, 216),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: UiHelper.customButton(
        callback: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Loginscreen()),
          );
        },
        buttonname: "Agree and Continue",
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
