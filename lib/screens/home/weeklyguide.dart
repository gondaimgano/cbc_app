import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class WeeklyGuideWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[

        Positioned.fill(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: ListView(
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.map,color: Colors.orangeAccent.shade700,size: 24,),
                  title: Text("Harare"),
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
                    child:Container(

                      width: double.infinity,
                      height: 500,
                      child: ListView(
                        children: <Widget>[
                          ..._produceMessages().map((msg)=>
                          Container(
                            margin: EdgeInsets.all(8.0),
                            child: ListTile(
                              leading: Container(height: 200,
                              width: 100,
                              color: Colors.grey,),
                              title: Text(msg['title'],style: TextStyle(fontWeight: FontWeight.bold),),
                              subtitle: Text(msg['description']),
                            ),
                          )

                          ).toList()
                        ],
                      ),
                    ) ,
                  ),
                ),
                Container(
                  color: Colors.deepPurple,
                  height: 250,
                  width: double.infinity,
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          leading: Icon(Icons.music_video,color: Colors.white,),
                          title: Text("Today's Worship Set",style: TextStyle(color: Colors.white,fontSize:22,fontWeight: FontWeight.bold),),
                        ),
                        Card(
                          margin: EdgeInsets.all(8.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 250*0.70,
                            color: Colors.white,
                            child: ListView(
                              children: <Widget>[
                                ..._produceWorshipSet().map((song)=>
                                    ListTile(

                                     title: Text(song['title']),
                                      subtitle: Text(song['artist']),
                                    )
                                ).toList()
                              ],
                            ),
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
                    child:Container(

                      width: double.infinity,
                      height: 500,
                      child: ListView(
                        children: <Widget>[
                          ..._produceMessages().map((msg)=>
                              Container(
                                margin: EdgeInsets.all(8.0),
                                child: ListTile(
                                  leading: Container(height: 200,
                                    width: 100,
                                    color: Colors.grey,),
                                  title: Text(msg['title'],style: TextStyle(fontWeight: FontWeight.bold),),
                                  subtitle: Text(msg['description']),
                                ),
                              )

                          ).toList()
                        ],
                      ),
                    ) ,
                  ),
                ),

              ],
            ),
          ),
        )
      ],
    );
  }
}


List<Map> _produceMessages()=>[
  {
    "image":"",
    "title":"Message Notes",
    "description":"Get notes from today's message using the YouVersion Bible App.",

    "action":(){}
  },
  {
    "image":"",
    "title":"Open Door",
    "description":"We want to get to know you better at Open Door",
    "action":(){}
  },
  {
    "image":"",
    "title":"Baptism",
    "description":"Is baptism your next step? If you have given your life to Jesus, tell the world through baptism!",
    "action":(){}
  },
  {
    "image":"",
    "title":"Kids Love LifeKids!",
    "description":"Once your kids try LifeKids, they'll be begging you to bring them every week!There's something for all of your kids",
    "action":(){}
  }
];

List<Map> _produceWorshipSet()=>[
  {
    "title":"All Glory",
    "artist":"Life.Church Worship"
  },
  {
    "title":"Another In The Fire",
    "artist":"Hillsong United"
  },
  {
    "title":"Living Hope",
    "artist":"Phil Wickham"
  },
];