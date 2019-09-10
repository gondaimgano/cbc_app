import 'package:flutter/material.dart';

class ConnectBean {
  Icon icon;
 Text title;

  ConnectBean({this.icon, this.title});

  ConnectBean.fromJson(Map<String, dynamic> json) {
    icon = json['icon'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['icon'] = this.icon;
    data['title'] = this.title;
    return data;
  }
}