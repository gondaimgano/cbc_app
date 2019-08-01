import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class NewsFeedWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          left: 10,
        child: Container(width: 2,
        height:MediaQuery.of(context).size.height,
        color: Colors.grey.withOpacity(0.7),),
    ),
        Positioned.fill(
          child: Container(
              child: ListView(
            children: <Widget>[
              Card(
                margin: EdgeInsets.all(4.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(2),
                  ),
                ),
                child: ListTile(
                  leading: Icon(Icons.scanner),
                  title: Text("Welcome to Central Baptist ZW.Church!"),
                  subtitle: Text("Please join and be enriched"),
                ),
              ),
              ..._produceFeed()
                  .map((item) => Card(
                        margin: EdgeInsets.all(4.0),
                        shape: RoundedRectangleBorder(
                          borderRadius:BorderRadius.circular(2)
                        ),
                        child: Container(
                          width: double.infinity,
                          height: 350,
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                top: 0,
                                left: 0,
                                right: 0,
                                height: 350 * 0.70,
                                child: Container(
                                  color: Colors.white,
                                  child: Image.network(item["image"]!=""?item["image"]:"http://www.globallightminds.com/wp-content/uploads/2016/02/Enjoying-life.jpg",fit: BoxFit.cover,),
                                ),
                              ),
                              Positioned(
                                bottom: 350 * 0.03,
                                left: 10,
                                child: Wrap(
                                  direction: Axis.vertical,
                                  spacing: 5,
                                  crossAxisAlignment: WrapCrossAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.symmetric(vertical: 5,),
                                      width: MediaQuery.of(context).size.width*0.9,
                                        child: Text(item["description"],)),
                                    Wrap(
                                      spacing: 12,
                                      crossAxisAlignment: WrapCrossAlignment.start,
                                      children: <Widget>[
                                        item['share']
                                            ? Text(
                                          "Share",
                                          style: TextStyle(
                                            color: Colors.lightBlue,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )
                                            : Container(),
                                        item["read"]
                                            ? Text(
                                          "Read",
                                          style: TextStyle(
                                            color: Colors.lightBlue,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )
                                            : Container(),
                                      ],
                                    ),
                                  ]
                                ),
                              ),
                              /*Positioned(
                                bottom: 350 * 0.2,
                                left: 10,
                                child: Text(
                                  item["heading"],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),*/
                            ],
                          ),
                        ),
                      ))
                  .toList(),
            ],
          )),
        ),
      ],
    );
  }
}

List<Map> _produceFeed() {
  return [
    {
      "heading": "A better today and a brighter tomorrow",
      "description": "",
      "image": "https://previews.123rf.com/images/evgenyatamanenko/evgenyatamanenko1509/evgenyatamanenko150900051/45241193-happy-girl-enjoying-life-and-freedom-in-the-autumn-on-the-nature.jpg",
      "share": true,
      "read": false,
    },
    {
      "heading": "The Adoption process: Ready?",
      "description": '''A lot of people can't help but feel curious when they learn someone is adopted. Their life experience may be different from their own because of it. Questions like, "Do you know who your biological parents are?" ''',
      "image": "https://www.adoptivefamilies.com/wp-content/uploads/2014/06/newsletter-multicultural-family-ts-487054278.jpg",
      "share": true,
      "read": true,
    },
    {
      "heading": "Depression",
      "description": "#life #death #prosperity",
      "image": "https://www.unilad.co.uk/wp-content/uploads/2017/01/6419UNILAD-imageoptim-sad-man.jpeg",
      "share": true,
      "read": false,
    },
    {
      "heading": "",
      "description": "",
      "image": "",
      "share": true,
      "read": true,
    },
    {
      "heading": "",
      "description": "",
      "image": "",
      "share": true,
      "read": true,
    },
  ];
}
