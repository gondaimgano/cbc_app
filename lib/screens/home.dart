import 'package:cbc_app/screens/home/discover.dart';
import 'package:cbc_app/screens/home/newsfeed.dart';
import 'package:cbc_app/screens/home/weeklyguide.dart';
import 'package:cbc_app/widgets.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        appBar:showChurchAppBar(ChurchBar.HOME),
        body: TabBarView(
          children: [
            NewsFeedWidget(),
            DiscoverWidget(),
           WeeklyGuideWidget(),
          ],
        ),
      ),
    );
  }
}
