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
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  ListTile(
                    title: Text(item["title"]),
                  ),
                  Container(
                    width: double.infinity,
                    child: GridView.count(
                      shrinkWrap: true,
                      crossAxisCount: 2,
                      padding: EdgeInsets.all(8.0),
                      children: <Widget>[
                        ...item["group"].map(
                          (child) => Card(
                            margin: EdgeInsets.all(2.0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(2.0)),
                            child: Container(
                              constraints: BoxConstraints.expand(
                                height: 500,
                              ),
                              width: double.infinity,
                              child: Container(
                                margin: EdgeInsets.all(4),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Image.network(
                                      child["image"],
                                      height:
                                          (MediaQuery.of(context).size.height *
                                                  0.45) *
                                              0.35,
                                      width: double.infinity,
                                      fit: BoxFit.fill,
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      child["header"],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
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
          {
            "header": "Life Group",
            "image":
                "https://www.life.church/assets/pages/lifegroups/lifegroups-hero-large@3x-0b83720839d61327af62b40d7d24f499c674dc149473d65c3efebdd1066983fb.jpg"
          },
          {
            "header": "Worship",
            "image":
                "https://media.swncdn.com/cms/CW/faith/69089-worship-song-singing-cross-church-gettyimages.1200w.tn.jpg"
          },
          {
            "header": "NextGen",
            "image":
                "https://www.evangelicalsforsocialaction.org/wp-content/uploads/2017/02/generationnext.jpg"
          },
          {
            "header": "Careers",
            "image":
                "https://www.covenantcareers.com//wp-content/uploads/sites/34/2016/04/group-careers-image.jpg"
          },
          {
            "header": "Serving",
            "image":
                "https://www.life.church/assets/pages/lifegroups/lifegroups-hero-large@3x-0b83720839d61327af62b40d7d24f499c674dc149473d65c3efebdd1066983fb.jpg"
          },
        ]
      },
      {
        "title": "Tools for growth".toUpperCase(),
        "group": [
          {
            "header": "Leadership Podcast",
            "image":
                "https://www.life.church/assets/pages/lifegroups/lifegroups-hero-large@3x-0b83720839d61327af62b40d7d24f499c674dc149473d65c3efebdd1066983fb.jpg"
          },
          {
            "header": "Church Online",
            "image":
                "https://www.life.church/assets/pages/lifegroups/lifegroups-hero-large@3x-0b83720839d61327af62b40d7d24f499c674dc149473d65c3efebdd1066983fb.jpg"
          },
          {
            "header": "Young Ladies",
            "image":
                "https://www.life.church/assets/pages/lifegroups/lifegroups-hero-large@3x-0b83720839d61327af62b40d7d24f499c674dc149473d65c3efebdd1066983fb.jpg"
          },
          {
            "header": "Generation Faith",
            "image":
                "https://www.life.church/assets/pages/lifegroups/lifegroups-hero-large@3x-0b83720839d61327af62b40d7d24f499c674dc149473d65c3efebdd1066983fb.jpg"
          },
          {
            "header": "321 Go",
            "image":
                "https://www.life.church/assets/pages/lifegroups/lifegroups-hero-large@3x-0b83720839d61327af62b40d7d24f499c674dc149473d65c3efebdd1066983fb.jpg"
          },
        ]
      },
    ];
