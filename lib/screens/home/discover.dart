import 'package:cbc_app/api/ApiService.dart';
import 'package:cbc_app/models/DiscoverBean.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DiscoverWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ApiService>(
      builder:(context,model,child)=> ListView(

        children: <Widget>[
          ...model.produceDiscover()
              .map(
                (item) => Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    ListTile(
                      title: Text(item.title),
                    ),
                    Container(
                      width: double.infinity,
                      child: GridView.count(
                        shrinkWrap: true,
                        crossAxisCount: 2,
                        padding: EdgeInsets.all(8.0),
                        children: <Widget>[
                          ...item.group.map(
                            (i) => Card(
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
                                        i.image,
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
                                        i.header,
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
      ),
    );
  }
}


