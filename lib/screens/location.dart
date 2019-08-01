import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:cbc_app/widgets.dart';

class LocationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar:showChurchAppBar(ChurchBar.LOCATION),
        body: TabBarView(
          children: [
            Icon(Icons.directions_car),
            Icon(Icons.directions_transit),

          ],
        ),
      ),
    );
  }
}