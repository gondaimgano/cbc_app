import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:cbc_app/widgets.dart';

class ConnectScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: showChurchAppBar(ChurchBar.NONE),
      body: ListView(

        children: _produceConnect().map((item)=>
        Container(
          margin: EdgeInsets.only(top:8.0,bottom: 8.0),
          child: ListTile(
            title: item["title"],
            leading: Icon(item["icon"]),
          ),
        )).toList(),
      ),
    );
  }
}

List<Map> _produceConnect()=>[
  {
    "icon":Icons.music_video,
    "title":Text("I'm new to CBC church")
  },
  {
    "icon":Icons.music_video,
    "title":Text("I'm commiting my life to Christ")
  },
  {
    "icon":Icons.music_video,
    "title":Text("I'm renewing my commitment to Christ")
  },
  {
    "icon":Icons.chat,
    "title":Text("I'm interested in Rafiki")
  },
  {
    "icon":Icons.play_circle_filled,
    "title":Text("I want to be baptized")
  },
  {
    "icon":Icons.donut_small,
    "title":Text("I'm ready to serve")
  },
  {
    "icon":Icons.refresh,
    "title":Text("I want to join a Cell Group")
  },
  {
    "icon":Icons.image,
    "title":Text("I have a prayer request")
  },
  {
    "icon":Icons.person,
    "title":Text("I have a question")
  }

];