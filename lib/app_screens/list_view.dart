import 'dart:html';
import 'dart:js';
import 'dart:ui';

import 'package:flutter/material.dart';

class BuildList extends StatelessWidget {
  const BuildList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white60,
      child: igetListView(),
    );
  }
}

void expcontent(String content){
  debugPrint(content);
}

Widget igetListView() {
  var listView = ListView(
    children: <Widget>[
      ListTile(
        leading: Icon(Icons.landscape_rounded),
        title: Text(
          "Landscape",
          style: TextStyle(
              color: Colors.black87,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          "Beutiful landscape",
          style:
              TextStyle(color: Colors.black87, fontWeight: FontWeight.normal),
        ),
        trailing: Icon(Icons.wb_sunny_rounded),
        onTap: () {
          debugPrint("You Pressed a beutiful landscape");
        },
      ),
      ListTile(
        leading: Icon(Icons.fireplace_sharp),
        title: Text(
          "Fireplace",
          style: TextStyle(
              fontFamily: "Raleway",
              color: Colors.black87,
              fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          "Convinient place during cold times",
          style:
              TextStyle(color: Colors.black87, fontWeight: FontWeight.normal),
        ),
        onTap: () {
          debugPrint("You Pressed a Fireplace, I think you need one at home..");
        },
      ),
      ListTile(
        leading: Icon(Icons.laptop_mac_rounded),
        title: Text(
          "Mac Laptop",
          style: TextStyle(
              fontFamily: "Raleway",
              color: Colors.black87,
              fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          "Very convinient for programming",
          style:
              TextStyle(color: Colors.black87, fontWeight: FontWeight.normal),
        ),
        onTap: () {
          debugPrint("You Pressed a Mac Computer, you seem serious in programming");
        },
      ),
      Container(
          padding: EdgeInsets.only(left: 20.0, top: 20.0),
          color: Colors.amberAccent,
          height: 50.0,
          width: 20 / 100,
          child: Text(
            "If you think you need all this then you can have them..",
            style: TextStyle(fontWeight: FontWeight.w600),
          ))
    ],
  );

  return listView;
}
