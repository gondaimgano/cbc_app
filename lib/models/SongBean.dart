class SongBean {
  String city;
  String title;
  String artist;

  SongBean({this.city, this.title, this.artist});

  SongBean.fromJson(Map<String, dynamic> json) {
    city = json['city'];
    title = json['title'];
    artist = json['artist'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['city'] = this.city;
    data['title'] = this.title;
    data['artist'] = this.artist;
    return data;
  }
}