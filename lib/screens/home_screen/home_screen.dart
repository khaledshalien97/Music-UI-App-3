import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:music_ui_app/model/data_model.dart';
import 'package:music_ui_app/screens/common_widgets/common_text_widget.dart';
import 'package:music_ui_app/screens/home_screen/widgets/category_list.dart';
import 'package:music_ui_app/screens/home_screen/widgets/favourites_list.dart';
import 'package:music_ui_app/screens/home_screen/widgets/recent_list.dart';
import 'package:music_ui_app/screens/play_list_screen/play_list_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0F0817),
      body: Stack(
        children: [
          Positioned(
            top: 200,
            left: -140,
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
            padding: EdgeInsets.symmetric(horizontal: 22, vertical: 60),
            child: SingleChildScrollView(
              child: Column(
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
                    text: "What do you feel like today?",
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
                  // Category List
                  CategoryList(),
                  // Recent List
                  RecentList(),
                
                  FavouritesList(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

