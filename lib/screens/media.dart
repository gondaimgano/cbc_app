import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:cbc_app/widgets.dart';

class MediaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: showChurchAppBar(ChurchBar.NONE),
      body: ListView(
        children: <Widget>[
          _showWidgeeView("Messages", null, (){}, [
            Container(height: 100,width: 150, color: Colors.deepPurple,),
            Container(height: 100,width: 150, color: Colors.grey,),
            Container(height: 100,width: 150, color: Colors.orange,),
            Container(height: 100,width: 150, color: Colors.red,),
            Container(height: 100,width: 150, color: Colors.lightBlue,),
            Container(height: 100,width: 150, color: Colors.deepPurple,),
            Container(height: 100,width: 150, color: Colors.deepPurple,),
            Container(height: 100,width: 150, color: Colors.deepPurple,),
          ],Colors.white),
          _showWidgeeView("Worship", null, (){}, [
            Container(height: 100,width: 150, color: Colors.deepPurple,),
            Container(height: 100,width: 150, color: Colors.grey,),
            Container(height: 100,width: 150, color: Colors.orange,),
            Container(height: 100,width: 150, color: Colors.red,),
            Container(height: 100,width: 150, color: Colors.lightBlue,),
            Container(height: 100,width: 150, color: Colors.deepPurple,),
            Container(height: 100,width: 150, color: Colors.deepPurple,),
            Container(height: 100,width: 150, color: Colors.deepPurple,),
          ],Colors.purple),
          _showWidgeeView("Life Groups", null, (){}, [
            Container(height: 150,width: 150, color: Colors.deepPurple,),
            Container(height: 150,width: 150, color: Colors.grey,),
            Container(height: 150,width: 150, color: Colors.orange,),
            Container(height: 150,width: 150, color: Colors.red,),
            Container(height: 150,width: 150, color: Colors.lightBlue,),
            Container(height: 150,width: 150, color: Colors.deepPurple,),
            Container(height: 150,width: 150, color: Colors.deepPurple,),
            Container(height: 150,width: 150, color: Colors.deepPurple,),
          ],Colors.green),
          _showWidgeeView("Stories", null, (){}, [
            Container(height: 150,width: 150, color: Colors.deepPurple,),
            Container(height: 150,width: 150, color: Colors.grey,),
            Container(height: 150,width: 150, color: Colors.orange,),
            Container(height: 150,width: 150, color: Colors.red,),
            Container(height: 150,width: 150, color: Colors.lightBlue,),
            Container(height: 150,width: 150, color: Colors.deepPurple,),
            Container(height: 150,width: 150, color: Colors.deepPurple,),
            Container(height: 150,width: 150, color: Colors.deepPurple,),
          ],Colors.blue),
        ],
      ),
    );
  }
}

Widget _showWidgeeView(String title,Widget _para,VoidCallback action,List<Widget> children,Color color)
{
  return Container(
    color: color,
    constraints: BoxConstraints.expand(height: 300,width: double.infinity),
    margin: EdgeInsets.all(8),
    child:Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        ListTile(title: Text(title,style: TextStyle(fontWeight: FontWeight.bold,fontFamily: "Montserrat"),),
          trailing: RaisedButton(onPressed: action,child: Text("View All"),shape: RoundedRectangleBorder(),color: Colors.grey,),
        ),
        AspectRatio(
          aspectRatio: 15/9,
          child: Container(
            width: double.infinity,
            height: 100,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
                itemBuilder: (context,idx)=>children[idx], separatorBuilder: (context,idx)=>SizedBox(width: 16,), itemCount: children.length)
          ),
        )
      ],
    ) ,
  );
}