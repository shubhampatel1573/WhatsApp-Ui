import 'package:flutter/material.dart';
import 'package:whatsapp_app/Screens/Profile/profilescreen.dart';
import 'package:whatsapp_app/Widgets/uihelper.dart';

class Otpscreen extends StatefulWidget {
  final String phonenumber;
  Otpscreen({super.key, required this.phonenumber});

  @override
  State<Otpscreen> createState() => _OtpscreenState();
}

class _OtpscreenState extends State<Otpscreen> {
  TextEditingController otp1Controller = TextEditingController();

  TextEditingController otp2Controller = TextEditingController();

  TextEditingController otp3Controller = TextEditingController();

  TextEditingController otp4Controller = TextEditingController();

  TextEditingController otp5Controller = TextEditingController();

  TextEditingController otp6Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 80),
            UiHelper.customText(
              text: "Verifying your Number",
              height: 20,
              color: Color(0XFF00A884),
              fontWeight: FontWeight.bold,
            ),
            SizedBox(height: 20),
            UiHelper.customText(
              text: "You've tried to register +91 ${widget.phonenumber}",
              height: 15,
            ),
            UiHelper.customText(
              text: "recently. Wait before requesting an SMS or a Call",
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.customText(text: "with your code", height: 15),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: UiHelper.customText(
                    text: " Wrong number?",
                    height: 15,
                    color: Color(0XFF00A884),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.customContainer(otp1Controller),
                SizedBox(width: 10),
                UiHelper.customContainer(otp2Controller),
                SizedBox(width: 10),
                UiHelper.customContainer(otp3Controller),
                SizedBox(width: 10),
                UiHelper.customContainer(otp4Controller),
                SizedBox(width: 10),
                UiHelper.customContainer(otp5Controller),
                SizedBox(width: 10),
                UiHelper.customContainer(otp6Controller),
              ],
            ),
            SizedBox(height: 30),
            UiHelper.customText(
              text: "Didn't received code?",
              height: 14,
              color: Color(0XFF00A884),
            ),
          ],
        ),
      ),
      floatingActionButton: UiHelper.customButton(
        callback: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ProfileScreen()),
          );
        },
        buttonname: "Next",
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
