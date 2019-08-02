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
      Tab(child: Text("NEWS FEED",),),
      Tab(child:Text("DISCOVER",),),
      Tab(child: Text("Weekly Guide",),),
    ],
  ),
  backgroundColor: Colors.transparent,
  title: Text("Central Baptist Church.ZW",style: TextStyle(color: Colors.black),),
  actions: <Widget>[
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Icon(Icons.person_pin,color: Colors.black,),
    )],
):bar==ChurchBar.LOCATION?AppBar(
  elevation: 0.0,
  bottom:TabBar(

    tabs: [
      Tab(child: Text("CHURCH ONLINE",),),
      Tab(child:Text("LOCATION",),),

    ],
  ),
  backgroundColor: Colors.transparent,
  title: Text("Central Baptist Church.ZW",style: TextStyle(color: Colors.black),),
  actions: <Widget>[Padding(
    padding: const EdgeInsets.all(8.0),
    child: Icon(Icons.person_pin,color: Colors.black,),
  )],
):AppBar(
  elevation: 0.0,
  backgroundColor: Colors.transparent,
  title: Text("Central Baptist Church.ZW",style: TextStyle(color: Colors.black),),
    actions: <Widget>[Padding(
      padding: const EdgeInsets.all(8.0),
      child: Icon(Icons.person_pin,color: Colors.black,),
    )],
);


