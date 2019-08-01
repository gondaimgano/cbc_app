import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class DiscoverWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ..._produceDiscover()
            .map(
              (item) => Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  ListTile(
                    title: Text(item["title"]),
                  ),
                  Container(
                    width: double.infinity,
                    height: 300,
                    child: GridView.count(
                      crossAxisCount: 2,
                      padding: EdgeInsets.all(8.0),
                      childAspectRatio: 0.8/0.5,
                      children: <Widget>[
                        ...item["group"].map((child) => Card(
                               margin: EdgeInsets.all(2.0),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.0)),

                              child: Container(
                                height: MediaQuery.of(context).size.height * 0.45,
                                width: MediaQuery.of(context).size.width * 0.45,
                                child: Text(
                                  child["header"],
                                ),
                              ),
                            ))
                      ],
                    ),
                  )
                ],
              ),
            )
            .toList(),
      ],
    );
  }
}

List<Map> _produceDiscover() => [
      {
        "title": "Next steps".toUpperCase(),
        "group": [
          {"header": "Life Group", "image": ""},
          {"header": "Worship", "image": ""},
          {"header": "NextGen", "image": ""},
          {"header": "Careers", "image": ""},
          {"header": "Serving", "image": ""},
        ]
      },
      {
        "title": "Tools for growth".toUpperCase(),
        "group": [
          {"header": "Leadership Podcast", "image": ""},
          {"header": "Church Online", "image": ""},
          {"header": "Young Ladies", "image": ""},
          {"header": "Generation Faith", "image": ""},
          {"header": "321 Go", "image": ""},
        ]
      },
    ];
