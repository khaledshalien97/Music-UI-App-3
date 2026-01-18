import 'package:flutter/material.dart';
import 'package:music_ui_app/screens/common_widgets/common_text_widget.dart';
import 'package:music_ui_app/screens/welcome_screen/widgets/continue_btn.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background_image.jpeg"),
            fit: BoxFit.fitHeight,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            commonTextWidget(
              text: "Feel the beat",
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(height: 16),
            commonTextWidget(
              text: "Emmerse yourself into the\n world of music today",
              color: Color(0xffA5A5A5),
              fontSize: 14,
              fontWeight: FontWeight.w600,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40),

            continueButton(context),
            SizedBox(height: 85),
          ],
        ),
      ),
    );
  }

 
}
