
import 'package:cbc_app/screens/connect.dart';
import 'package:cbc_app/screens/giving.dart';
import 'package:cbc_app/screens/home.dart';
import 'package:cbc_app/screens/location.dart';
import 'package:cbc_app/screens/media.dart';
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
   MediaScreen(),
    ConnectScreen(),
    LocationScreen(),
    GivingScreen(),
  ];
  Widget selectedScreen()=>_screens[_idx];

}