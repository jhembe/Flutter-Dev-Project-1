import 'dart:html';
import 'package:flutter/material.dart';
import 'app_screens/home.dart';
import 'app_screens/list_view.dart';
import 'app_screens/longlist.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      //    title: "Wiget test apps",
      home:// Home(),
          Scaffold(
            appBar: AppBar(title:Text("List View 1"),backgroundColor: Colors.amberAccent.shade700,),
          // body:BuildList()
          body: getListView(),
          
      )));
}

