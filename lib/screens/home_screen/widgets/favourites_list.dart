import 'package:flutter/material.dart';
import 'package:music_ui_app/model/data_model.dart';
import 'package:music_ui_app/screens/common_widgets/common_text_widget.dart';
import 'package:music_ui_app/screens/common_widgets/music_container.dart';

class FavouritesList extends StatelessWidget {
  const FavouritesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 40),
        commonTextWidget(
          text: "Your favourites",
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
        SizedBox(height: 10),
        SizedBox(
          height: 200,
          child: ListView.builder(
            itemBuilder: (context, index) {
              var data = DataModel.favouritesMusic;
              return musicContainer(data, index);
            },

            itemCount: DataModel.favouritesMusic.length,
          ),
        ),
      ],
    );
  }

 
}
