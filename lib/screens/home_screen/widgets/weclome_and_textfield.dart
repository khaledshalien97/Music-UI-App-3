import 'package:flutter/material.dart';
import 'package:music_ui_app/screens/common_widgets/common_text_widget.dart';

class WelcomeandTextField extends StatelessWidget {
  const WelcomeandTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        commonTextWidget(
          text: "Welcome back!",
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
        SizedBox(height: 8),
        commonTextWidget(
          text: "What do you feel like today ?",
          color: Color(0xffA5A5A5),
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
        SizedBox(height: 24),
        TextField(
          decoration: InputDecoration(
            hint: commonTextWidget(
              text: "Search song, playslist, artist...",
              color: Color(0xffA5A5A5),
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
            fillColor: Color(0xff433E48),
            filled: true,
            prefixIcon: Icon(Icons.search, color: Color(0xffA5A5A5)),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(8),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(8),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        SizedBox(height: 40),
      ],
    );
  }
}
