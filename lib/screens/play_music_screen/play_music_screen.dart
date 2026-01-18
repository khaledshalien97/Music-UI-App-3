import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:music_ui_app/screens/common_widgets/common_text_widget.dart';

class PlayMusicScreen extends StatelessWidget {
  const PlayMusicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Padding actionIcon(String icon) {
      return Padding(
        padding: const EdgeInsets.all(6),
        child: SvgPicture.asset(icon),
      );
    }

    return Scaffold(
      backgroundColor: Color(0xff0F0817),
      body: Stack(
        children: [
          Positioned(
            top: -185,
            left: 180,
            child: Container(
              width: 430,
              height: 415,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xff781ECF),
              ),
            ),
          ),
          Positioned(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
              child: Container(color: Colors.transparent),
            ),
          ),

          Positioned(
            bottom: -185,
            left: -185,
            child: Container(
              width: 430,
              height: 415,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xff781ECF),
              ),
            ),
          ),
          Positioned(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
              child: Container(color: Colors.transparent),
            ),
          ),

          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.keyboard_control_rounded,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  Container(
                    width: double.infinity,
                    height: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(
                        image: AssetImage("assets/images/you_right.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          commonTextWidget(
                            text: "You Right",
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                          SizedBox(height: 8),
                          commonTextWidget(
                            text: "Doja Cat, The Weeknd",
                            color: Color(0xffA5A5A5),
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ],
                      ),
              
                      Icon(Icons.favorite_border, color: Colors.white),
                    ],
                  ),
                 SizedBox(height: 36),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      trackHeight: 3,
                      thumbShape: const RoundSliderThumbShape(
                        enabledThumbRadius: 7,
                      ),
                      overlayShape: const RoundSliderOverlayShape(
                        overlayRadius: 14,
                      ),
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Color(0xffA5A5A5),
                      thumbColor: Colors.white,
                      overlayColor: Colors.white,
                    ),
                    child: Slider(value: 0.65, onChanged: (v) {}),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "1:24",
                        style: TextStyle(color: Colors.white54, fontSize: 14),
                      ),
                      Text(
                        "3:58",
                        style: TextStyle(color: Colors.white54, fontSize: 14),
                      ),
                    ],
                  ),
               SizedBox(height: 60),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        actionIcon("assets/svg_img/shuffle.svg"),
                        actionIcon("assets/svg_img/skip-back.svg"),
                        Container(
                          width: 64,
                          height: 64,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              colors: [
                                Color(0xff842ED8),
                                Color(0xffDB28A9),
                                Color(0xff9D1DCA),
                              ],
                            ),
                          ),
                          child: Icon(Icons.pause, color: Colors.white, size: 40),
                        ),
              
                        actionIcon("assets/svg_img/skip-forward.svg"),
                        actionIcon("assets/svg_img/repeat.svg"),
                      ],
                    ),
                  ),
                     SizedBox(height: 60),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
