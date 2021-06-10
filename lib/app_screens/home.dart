import 'dart:html';

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // AS the container widget its kinda difficult to change the dimensions of the widget since it
    // as a child of the maaterial app. since the material app occupies the whoole screen..
    //due to this we use another widget known as center..
    //we sandwitch container within center..

    return Center(
        child: Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(top: 40.0, left: 10.0),
      // width: 200,
      // height: 100,
      //margin: EdgeInsets.all(20.0),
      // margin:EdgeInsets.only(right: 20.0,top: 15.0, left:20.0,bottom: 15.0),
      // padding: EdgeInsets.all(20.0),
      color: Colors.cyanAccent.shade700,
      child: Column(
        children: <Widget>[
          row("1.One\n",
              "You know he's only calling cz he's drunk and alone\n"),
          row("2.Two\n", "Don't let him in, you have to kick him out again\n"),
          row("3.Three\n",
              "Don't be his friend You know you're gonna wake up in his bed in the morning And if you're under him, you ain't getting over him"),
          GENOImageAsset(),
          GenoButton()
        ],
      ),
    ));
  }
}

Widget textTitle(title) {
  return Container(
      // alignment: Alignment.center,
      //margin: EdgeInsets.all(10.0),
      //padding: EdgeInsets.only(left: 30.0),
      child: Expanded(
          child: Text(
    title,
    style: TextStyle(
      decoration: TextDecoration.none,
      fontSize: 23,
      color: Colors.white,
      fontWeight: FontWeight.bold,
    ),
  )));
}

Widget textContent(content) {
  return Container(
      // alignment: Alignment.center,
      //margin: EdgeInsets.all(10.0),
      //padding: EdgeInsets.only(left: 70.0),
      child: Expanded(
          child: Text(content,
              style: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 17,
                fontWeight: FontWeight.normal,
              ))));
}

Widget row(String title, String content) {
  return Container(
    child: Row(
      children: [textTitle(title), textContent(content)],
    ),
  );
}

class ThumbImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/Logo GENO bg (002).png');
    //Image image = Image(image: assetImage ,height:50,width:70,);
    Image image = Image(
      image: assetImage,
      height: MediaQuery.of(context).size.height * 0.5,
      width: MediaQuery.of(context).size.width * 0.5,
    );
    return Container(
      margin: EdgeInsets.only(top: 0.0),
      padding: EdgeInsets.only(top: 0.0),
      child: image,
    );
  }
}

class GENOImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // AssetImage assetImage = AssetImage('images/Logo GENO bg (002).png');
    // //Image image = Image(image: assetImage ,height:50,width:70,);
    // Image image = Image(
    //   image: assetImage,
    //   height: MediaQuery.of(context).size.height * 0.5,
    //   width: MediaQuery.of(context).size.width * 0.5,
    // );
    // return Container(

    //   margin: EdgeInsets.only(top:0.0),
    //   padding : EdgeInsets.only(top:0.0),
    //   child: image,
    // );
    return Container(
        margin: EdgeInsets.only(top: 0.0),
        child: Row(
          children: [
            Image(
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width * 0.2,
                image: AssetImage('images/Logo GENO bg (002).png'))
          ],
        ));
  }
}

class GenoButton extends StatelessWidget {
  const GenoButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 20.0),
        height: 50,
        width: 200,
        child: RaisedButton(
          onPressed: () {
            GenoAction(context); //action to be perfomed incase of a click..
          },
          color: Colors.amberAccent,
          child: Text(
            "GENO Button",
            style: TextStyle(
                fontSize: 20.0,
                color: Colors.black87,
                fontWeight: FontWeight.bold,
                fontFamily: "Raleway"),
          ),
          elevation: 20.0,
        )

        // ElevatedButton(
        //   onPressed: () {},
        //   child: const Text("GENO Button")
        //   ,
        //   )
        );
  }

  void GenoAction(BuildContext context) {
    var alertDialogue = AlertDialog(
        title: Text("GENO Button Pressed Successfully"),
        content: Text("Keep learning Flutter"));
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alertDialogue;
        });
  }
}
