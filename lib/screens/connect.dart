import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:cbc_app/widgets.dart';

class ConnectScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: showChurchAppBar(ChurchBar.NONE),
    );
  }
}