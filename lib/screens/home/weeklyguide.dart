import 'package:cbc_app/models/CityBean.dart';
import 'package:cbc_app/models/NoticeBean.dart';
import 'package:cbc_app/models/SongBean.dart';
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
                                ...updatesByCity().map((city)=>
                                ListTile(
                                  title: Text(city.city,softWrap: true,style: TextStyle(fontSize: 36,),),
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
                        ..._produceMessages().map((msg)=>
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
                              ..._produceWorshipSet().map((song)=>
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
                        ..._produceMessages().map((msg)=>
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
    );
  }
}


List<CityBean> updatesByCity()=>[
  {"city":"bulawayo"},
  {"city":"harare"},
  {"city":"masvingo"},
].map((i)=>CityBean.fromJson(i),);

List<NoticeBean> _produceMessages()=>[
  {
    "city":["harare","bulawayo","masvingo"],
    "image":"",
    "title":"Message Notes",
    "description":"Get notes from today's message using the YouVersion Bible App.",

    "action":(){}
  },
  {
    "city":["harare","bulawayo"],
    "image":"",
    "title":"Open Door",
    "description":"We want to get to know you better at Open Door",
    "action":(){}
  },
  {
    "city":["bulawayo","harare"],
    "image":"",
    "title":"Baptism",
    "description":"Is baptism your next step? If you have given your life to Jesus, tell the world through baptism!",
    "action":(){}
  },
  {
    "city":"bulawayo",
    "image":"",
    "title":"Kids Love LifeKids!",
    "description":"Once your kids try LifeKids, they'll be begging you to bring them every week!There's something for all of your kids",
    "action":(){}
  }
].map((i)=>NoticeBean.fromJson(i),);

List<SongBean> _produceWorshipSet()=>[
  {
    "city":"harare",
    "title":"All Glory",
    "artist":"Life.Church Worship"
  },
  {
    "city":"bulawayo",
    "title":"Another In The Fire",
    "artist":"Hillsong United"
  },
  {
    "city":"harare",
    "title":"Living Hope",
    "artist":"Phil Wickham"
  },
  {
    "city":"harare",
    "title":"All glory",
    "artist":"Central Baptist Church"
  },
  {
    "city":"harare",
    "title":"All glory",
    "artist":"Central Baptist Church"
  }

].map((i)=>SongBean.fromJson(i));