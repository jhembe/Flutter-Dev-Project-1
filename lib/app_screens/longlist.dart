import 'dart:developer';
import 'dart:js';

import 'package:flutter/material.dart';
 
List<String> getListElements() {
  var items = List<String>.generate(20, (counter) => "Content $counter");
  return items;
}

Widget getListView() {
  var listItems = getListElements();

  var listView = ListView.builder(itemBuilder: (context, index) {
    return ListTile(
      leading: Icon(Icons.play_circle),
      title: Text(listItems[index+1]),
      onTap: () => tapA(context,listItems[index+1]),
    );
  });
  return listView;
}

void tapA(BuildContext context,listItems) {
    var alertDialogue = AlertDialog(
      backgroundColor: Colors.blueAccent.shade200,
        title: Text("List Content pressed Successfully",style: TextStyle(fontSize: 14.0,fontFamily: 'Raleway'),),
        content: Text("${listItems} was tapped",style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'Raleway'),));
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alertDialogue;
        });
  
}
