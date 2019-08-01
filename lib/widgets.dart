import 'package:flutter/material.dart';

enum ChurchBar{
  HOME,
  NONE,
  LOCATION
}

AppBar showChurchAppBar(ChurchBar bar)
=>bar==ChurchBar.HOME?AppBar(
  elevation: 0.0,
  bottom:TabBar(

    tabs: [
      Tab(text: "News Feed",),
      Tab(text:"Discover",),
      Tab(text:"Weekly Guide",),
    ],
  ),
  backgroundColor: Colors.transparent,
  title: Text("Central Baptist Church",style: TextStyle(fontFamily: "Rubik",color: Colors.black),),
):bar==ChurchBar.LOCATION?AppBar(
  elevation: 0.0,
  bottom:TabBar(

    tabs: [
      Tab(text: "Church Online",),
      Tab(text:"Location",),

    ],
  ),
  backgroundColor: Colors.transparent,
  title: Text("Central Baptist Church",style: TextStyle(fontFamily: "Rubik",color: Colors.black),),
):AppBar(
  elevation: 0.0,
  backgroundColor: Colors.transparent,
  title: Text("Central Baptist Church",style: TextStyle(fontFamily: "Rubik",color: Colors.black),),
);


