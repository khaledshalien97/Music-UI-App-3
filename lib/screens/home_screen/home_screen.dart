import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:music_ui_app/screens/home_screen/widgets/category_list.dart';
import 'package:music_ui_app/screens/home_screen/widgets/favourites_list.dart';
import 'package:music_ui_app/screens/home_screen/widgets/recent_list.dart';
import 'package:music_ui_app/screens/home_screen/widgets/weclome_and_textfield.dart';

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
                  // Welcome Text and Search TextField
                  WelcomeandTextField(),
                  // Category List
                  CategoryList(),
                  // Recent List
                  RecentList(),
                  // Favourites List
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
