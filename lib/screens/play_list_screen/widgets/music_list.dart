
import 'package:flutter/material.dart';
import 'package:music_ui_app/model/data_model.dart';
import 'package:music_ui_app/screens/common_widgets/common_text_widget.dart';

SizedBox musicList() {
  return SizedBox(
    height: 350,
    child: ListView.builder(
      itemBuilder: (context, index) {
        var data = DataModel.playlistMusic;
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 6),
          child: ListTile(
            contentPadding: EdgeInsets.all(0),
            title: commonTextWidget(
              text: data[index].musicName,
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
            subtitle: commonTextWidget(
              text: data[index].artistName,
              color: Color(0xffA5A5A5),
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
            leading: Container(
              width: 56,
              height: 56,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  image: AssetImage(data[index].musicImg),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            trailing: commonTextWidget(
              text: data[index].time,
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        );
      },

      itemCount: DataModel.playlistMusic.length,
    ),
  );
}
