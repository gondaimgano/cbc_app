
import 'package:cbc_app/screens/home.dart';
import 'package:flutter/material.dart';

class BottomTrackerNotifer with ChangeNotifier{
  int _idx=0;
  get idx=>_idx;

  set idx(int p){
    _idx=p;
    notifyListeners();
  }
  List<Widget> _screens=[
  HomeScreen(),
    Center(
      child: RaisedButton(
        onPressed: () {},
        child: Text("Media"),
      ),),
    Center(
      child: RaisedButton(
        onPressed: () {},
        child: Text("Message"),
      ),),
    Center(
      child: RaisedButton(
        onPressed: () {},
        child: Text("Location"),
      ),),
    Center(
      child: RaisedButton(
        onPressed: () {},
        child: Text("Give"),
      ),)
  ];
  Widget selectedScreen()=>_screens[_idx];

}