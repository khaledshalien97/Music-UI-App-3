class DataModel {
  final String musicName;
  final String artistName;
  final String musicImg;
  final String time;

  DataModel({
    required this.musicName,
    required this.artistName,
    required this.musicImg,
    required this.time,
  });

  static List<DataModel> recentMusic = [
    DataModel(
      musicName: "R&B Playlist",
      artistName: "Chill your mind",
      musicImg: "assets/images/r&b_playlist.jpg",
      time: "",
    ),
    DataModel(
      musicName: "Daily Mix 2",
      artistName: "Made for you",
      musicImg: "assets/images/daily_mix_2.jpg",
      time: "",
    ),
  ];

  static List<DataModel> favouritesMusic = [
    DataModel(
      musicName: "Bye Bye",
      artistName: "Marshmello, Juice WRLD",
      musicImg: "assets/images/bye_bye_2.jpg",
      time: "2:09",
    ),
    DataModel(
      musicName: "I Like You",
      artistName: "Post Malone, Doja Cat",
      musicImg: "assets/images/i_like_you.jpg",
      time: "4:03",
    ),
    DataModel(
      musicName: "Fountains",
      artistName: "Drake, Tems",
      musicImg: "assets/images/fountains.jpg",
      time: "3:18",
    ),
  ];

  static List<DataModel> playlistMusic = [
    DataModel(
      musicName: "You right",
      artistName: "Doja Cat, The Weeknd",
      musicImg: "assets/images/you_right.jpg",
      time: "3:58",
    ),
    DataModel(
      musicName: "2 AM",
      artistName: "Arizona Zervas",
      musicImg: "assets/images/2_am.jpg",
      time: "3:03",
    ),
    DataModel(
      musicName: "Baddest",
      artistName: "2 Chainz, Chris Brown",
      musicImg: "assets/images/baddest.jpg",
      time: "3:51",
    ),
    DataModel(
      musicName: "True Love",
      artistName: "Kanye West",
      musicImg: "assets/images/true_love.jpg",
      time: "4:52",
    ),
    DataModel(
      musicName: "Bye Bye",
      artistName: "Marshmello, Juice WRLD",
      musicImg: "assets/images/bye_bye.jpg",
      time: "2:09",
    ),
    DataModel(
      musicName: "Hands on you",
      artistName: "Austin George",
      musicImg: "assets/images/hands_on_you.jpg",
      time: "3:56",
    ),
  ];
}
