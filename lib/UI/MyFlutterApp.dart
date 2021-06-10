import 'package:flutter/material.dart';
import 'package:flutter_application_1/UI/firstScreen.dart';

class MyFlutterApp extends StatelessWidget {
  const MyFlutterApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: "Acacia",
        home: Scaffold(
          appBar: AppBar(
            title: Text("Leave Management System",style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold),),
            backgroundColor: Colors.amberAccent.shade200,
          ),
          body:FirstScreen()
        )
        
        );
  }
}