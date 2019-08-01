import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'notifiers/bottomNavigationNotifier.dart';

ThemeData themeData = ThemeData.light();

void main() => runApp(Root());

class Root extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<BottomTrackerNotifer>(
          builder: (_) => BottomTrackerNotifer(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: themeData.copyWith(
          tabBarTheme: TabBarTheme(
              //indicatorSize: TabBarIndicatorSize.tab,
              labelStyle: TextStyle(fontFamily: "Rubik", color: Colors.black),
              unselectedLabelStyle:
                  TextStyle(fontFamily: "Rubik", color: Colors.black),
              labelColor: Colors.black,
              unselectedLabelColor: Colors.black,
              indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(
                color: Colors.black,
                width: 2,
              ))),
          primaryColor: Colors.lightGreen[700],
          accentColor: Colors.black,
          buttonTheme: themeData.buttonTheme.copyWith(
            textTheme: ButtonTextTheme.primary,
            buttonColor: Colors.lightGreen[700],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
            ),
          ),
          textTheme: themeData.textTheme.apply(
            fontFamily: "Rubik",
          ),
        ),
        home: ChurchApp(),
      ),
    );
  }
}

class ChurchApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    BottomTrackerNotifer notiferTracker = Provider.of(context);
    return Scaffold(
      body: notiferTracker.selectedScreen(),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black87,
        type: BottomNavigationBarType.shifting,
        selectedLabelStyle: TextStyle(fontFamily: "Rubik", color: Colors.black),
        unselectedLabelStyle:
            TextStyle(fontFamily: "Rubik", color: Colors.black),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
          BottomNavigationBarItem(
            icon: Icon(Icons.play_circle_filled),
            title: Text("Media"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            title: Text("Connect"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pin_drop),
            title: Text("Location"),
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.gift),
            title: Text("Giving"),
          ),
        ],
        currentIndex: notiferTracker.idx,
        onTap: (i) => notiferTracker.idx = i,
      ),
    );
  }
}
