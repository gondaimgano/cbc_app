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
      Tab(text: "NEWS FEED",),
      Tab(text:"DISCOVER",),
      Tab(text:"WEEKLY GUIDE",),
    ],
  ),
  backgroundColor: Colors.transparent,
  title: Text("Central Baptist Church.ZW",style: TextStyle(fontFamily: "Montserrat",color: Colors.black),),
  actions: <Widget>[
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Icon(Icons.person_pin,color: Colors.black,),
    )],
):bar==ChurchBar.LOCATION?AppBar(
  elevation: 0.0,
  bottom:TabBar(

    tabs: [
      Tab(text: "CHURCH ONLINE",),
      Tab(text:"LOCATION",),

    ],
  ),
  backgroundColor: Colors.transparent,
  title: Text("Central Baptist Church.ZW",style: TextStyle(fontFamily: "Montserrat",color: Colors.black),),
  actions: <Widget>[Padding(
    padding: const EdgeInsets.all(8.0),
    child: Icon(Icons.person_pin,color: Colors.black,),
  )],
):AppBar(
  elevation: 0.0,
  backgroundColor: Colors.transparent,
  title: Text("Central Baptist Church.ZW",style: TextStyle(fontFamily: "Montserrat",color: Colors.black),),
    actions: <Widget>[Padding(
      padding: const EdgeInsets.all(8.0),
      child: Icon(Icons.person_pin,color: Colors.black,),
    )],
);


