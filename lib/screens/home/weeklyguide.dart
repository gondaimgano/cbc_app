
import 'package:cbc_app/api/ApiService.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class WeeklyGuideWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ApiService>(
     builder:(context,model,child)=> Stack(
        children: <Widget>[

          Positioned.fill(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: ListView(
                //shrinkWrap: true,
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.map,color: Colors.orangeAccent.shade700,size: 24,),
                    title: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Harare"),

                        InkWell(
                          onTap: (){
                            showModalBottomSheet(context: context, builder: (context)=>
                            Container(
                              constraints: BoxConstraints.expand(width: double.infinity,height:500,

                              ),
                              margin: EdgeInsets.all(20),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  ...model.updatesByCity().map((item)=>
                                  ListTile(
                                    title: Text(item.city,softWrap: true,style: TextStyle(fontSize: 36,),),
                                  ),).toList()
                                ],
                              ),
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40))
                            ));
                          },
                            child: RotatedBox(child: Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 24,),quarterTurns: 1,))
                      ],
                    ),
                    subtitle: Text("Meet at CBC"),
                    trailing: RaisedButton(onPressed: (){},child: Text("Give Now"),),
                  ),
                  Container(
                    color: Colors.black,
                    width: double.infinity,
                    child: Image.network("https://gochristfellowship.com/wp-content/uploads/2018/05/SermonSeries_2018_AtTheMovies_Web_1400x500.jpg",fit: BoxFit.fitWidth,),
                    height: 300,
                  ),
                  ListTile(
                    leading: Icon(Icons.rss_feed,size: 27,color: Colors.black,),
                    title: Text("News and Next Steps",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Card(
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(5,)
                       ),
                      child:Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                         ...model.produceMessages().map((msg)=>
                          Container(
                            margin: EdgeInsets.all(8.0),
                            child: ListTile(
                              leading: Container(height: 200,
                              width: 100,
                              color: Colors.grey,),
                              title: Text(msg.title,style: TextStyle(fontWeight: FontWeight.bold),),
                              subtitle: Text(msg.description),
                            ),
                          )

                          ).toList()
                        ],
                      ) ,
                    ),
                  ),
                  Container(
                    color: Colors.deepPurple,

                    width: double.infinity,
                    child: Container(
                      child:Column(
                        mainAxisSize: MainAxisSize.min,

                        children: <Widget>[
                          ListTile(
                            leading: Icon(Icons.music_video,color: Colors.white,),
                            title: Text("Today's Worship Set",style: TextStyle(color: Colors.white,fontSize:22,fontWeight: FontWeight.bold),),
                          ),
                          Card(
                            margin: EdgeInsets.symmetric(horizontal:16.0,vertical: 8.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                ...model.produceWorshipSet().map((song)=>
                                    ListTile(

                                     title: Text(song.title),
                                      subtitle: Text(song.artist),
                                    )
                                ).toList()
                              ],
                            ),
                          )
                        ],
                      ),
                    ),

                  ),

                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5,)
                      ),
                      child:Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          ...model.produceMessages().map((msg)=>
                              Container(
                                margin: EdgeInsets.all(8.0),
                                child: ListTile(
                                  leading: Container(height: 200,
                                    width: 100,
                                    color: Colors.grey,),
                                  title: Text(msg.title,style: TextStyle(fontWeight: FontWeight.bold),),
                                  subtitle: Text(msg.description),
                                ),
                              )

                          ).toList()
                        ],
                      ) ,
                    ),
                  ),

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}


