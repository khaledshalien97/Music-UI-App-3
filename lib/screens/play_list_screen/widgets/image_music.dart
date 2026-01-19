import 'package:flutter/material.dart';
import 'package:music_ui_app/screens/common_widgets/common_text_widget.dart';
import 'package:music_ui_app/screens/play_music_screen/play_music_screen.dart';

Container imageMusic(BuildContext context) {
  return Container(
    height: MediaQuery.of(context).size.height * 0.45,
    decoration: const BoxDecoration(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(24),
        bottomRight: Radius.circular(24),
      ),
    ),

    child: ClipRRect(
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(24),
        bottomRight: Radius.circular(24),
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset("assets/images/r&b_playlist.jpg", fit: BoxFit.cover),
          Container(
            padding: EdgeInsets.fromLTRB(24, 55, 24, 55),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black.withOpacity(0.0),
                  Colors.black.withOpacity(0.8),
                ],
                stops: const [0.0, 1.0],
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buttonControll(context),
                musicNameAndPlayButton(context),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Row buttonControll(BuildContext context) {
  return Row(
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
        icon: Icon(Icons.keyboard_control_rounded, color: Colors.white),
      ),
    ],
  );
}

Row musicNameAndPlayButton(BuildContext context) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          commonTextWidget(
            text: "R&B Playlist",
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(height: 8),
          commonTextWidget(
            text: "Chill your mind",
            color: Color(0xffA5A5A5),
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ],
      ),

      Row(
        children: [
          Icon(Icons.favorite_border, color: Colors.white),
          SizedBox(width: 20),
          Container(
            width: 56,
            height: 56,
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
            //
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PlayMusicScreen()),
                );
              },
              icon: Icon(Icons.play_arrow, color: Colors.white, size: 40),
            ),
          ),
        ],
      ),
    ],
  );
}
