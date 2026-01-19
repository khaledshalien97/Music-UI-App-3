import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:music_ui_app/screens/play_list_screen/widgets/image_music.dart';
import 'package:music_ui_app/screens/play_list_screen/widgets/music_list.dart';

class PlayListScreen extends StatelessWidget {
  const PlayListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0F0817),
      body: Stack(
        children: [
          Positioned(
            top: -8,
            right: -27,
            child: Container(
              width: 457,
              height: 438,
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
            bottom: -110,
            left: 218,
            child: Container(
              width: 192,
              height: 212,
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

          SingleChildScrollView(
            child: Column(children: [imageMusic(context), musicList(context)]),
          ),
        ],
      ),
    );
  }
}
