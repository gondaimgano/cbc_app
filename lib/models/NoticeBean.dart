import 'dart:ui';

class NoticeBean {
  List<String> city;
  String image;
  String title;
  String description;
  VoidCallback action;

  NoticeBean(
      {this.city, this.image, this.title, this.description, this.action});

  NoticeBean.fromJson(Map<String, dynamic> json) {
   // city = json['city'];
    image = json['image'];
    title = json['title'];
    description = json['description'];
    //action = json['action'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['city'] = this.city;
    data['image'] = this.image;
    data['title'] = this.title;
    data['description'] = this.description;
   // data['action'] = this.action;
    return data;
  }
}