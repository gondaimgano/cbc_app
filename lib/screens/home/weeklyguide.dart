import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class WeeklyGuideWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
       /* Positioned(
          left: 10,
          width: 2,
          height: MediaQuery.of(context).size.height,
          child: Container(
            color: Colors.grey.withOpacity(0.8),
          ),
        ),*/
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
                  leading: Icon(Icons.rss_feed,size: 30,color: Colors.black,),
                  title: Text("News and Next Steps",style: Theme.of(context).textTheme.headline.copyWith(fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Card(
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(5,)
                     ),
                    child:Container(

                      width: double.infinity,
                      height: MediaQuery.of(context).size.height*0.75,
                    ) ,
                  ),
                ),
                Container(
                  color: Colors.deepPurple,
                  height: 250,
                  width: double.infinity,
                  child: Container(
                    child: ListView(
                      children: <Widget>[
                        ListTile(
                          leading: Icon(Icons.music_video,color: Colors.white,size: 30,),
                          title: Text("Worship Set",style: TextStyle(color: Colors.white,fontSize: 30,fontFamily: "Rubik",fontWeight: FontWeight.bold),),
                        ),
                        Card(
                          margin: EdgeInsets.all(8.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 250*0.67,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
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
