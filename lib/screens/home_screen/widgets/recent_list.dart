import 'package:flutter/material.dart';
import 'package:music_ui_app/model/data_model.dart';
import 'package:music_ui_app/screens/common_widgets/common_text_widget.dart';
import 'package:music_ui_app/screens/play_list_screen/play_list_screen.dart';

class RecentList extends StatelessWidget {
  const RecentList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 270,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          var data = DataModel.recentMusic;
          return InkWell(
            onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>PlayListScreen()));
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 200,
                  width: 210,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(
                      image: AssetImage(data[index].musicImg),
                    ),
                  ),
                ),
                SizedBox(height: 16),
                commonTextWidget(
                  text: data[index].musicName,
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
                SizedBox(height: 4),
                commonTextWidget(
                  text: data[index].artistName,
                  color: Color(0xffA5A5A5),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ],
            ),
          );
        },
        separatorBuilder: (_, __) => const SizedBox(width: 10),
        itemCount: DataModel.recentMusic.length,
      ),
    );
  }
}