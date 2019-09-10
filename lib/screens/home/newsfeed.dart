import 'package:cbc_app/api/ApiService.dart';
import 'package:cbc_app/models/FeedBean.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

double screenWidth = 0.0;
class NewsFeedWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    return Consumer<ApiService>(
      builder:(context,model,child)=> Stack(
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

                ...model.produceFeed()
                    .map((item) => Card(
                          margin: EdgeInsets.all(4.0),
                          shape: RoundedRectangleBorder(
                            borderRadius:BorderRadius.circular(2)
                          ),
                          child: Container(

                            constraints: BoxConstraints.expand(
                              width: double.infinity,
                              height: item.description.toString().length>20? 450 : 350
                            ),
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                  top: 0,
                                  left: 0,
                                  right: 0,
                                  height: (item.description.toString().length>20? 400 : 350) * 0.70,
                                  child: Container(
                                    color: Colors.white,
                                    child: Image.network(item.image!=""?item.image:"http://www.globallightminds.com/wp-content/uploads/2016/02/Enjoying-life.jpg",fit: BoxFit.cover,),
                                  ),
                                ),
                                Positioned(
                                  bottom: (item.description.toString().length>20? 400 : 350) * 0.03,
                                  left: 10,
                                  child: Wrap(
                                    direction: Axis.vertical,
                                    spacing: 12,
                                    crossAxisAlignment: WrapCrossAlignment.start,
                                    children: [

                                      Container(
                                        margin: EdgeInsets.symmetric(vertical: 5,),
                                        width: MediaQuery.of(context).size.width*0.9,

                                          child: Text(item.description,)),
                                      Wrap(
                                        spacing: 12,
                                        crossAxisAlignment: WrapCrossAlignment.start,
                                        children: <Widget>[
                                          item.share
                                              ? Text(
                                            "Share",
                                            style: TextStyle(
                                              color: Colors.lightBlue,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17
                                            ),
                                          )
                                              : Container(),
                                          item.read
                                              ? Text(
                                            "Read",
                                            style: TextStyle(
                                              color: Colors.lightBlue,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17
                                            ),
                                          )
                                              : Container(),
                                        ],
                                      ),
                                    ]
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ))
                    .toList(),
              ],
            )),
          ),
        ],
      ),
    );
  }
}


