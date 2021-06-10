import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white60,
      child: Center(
        child: Text(
          'Welcome to "leave management system App"',
          textDirection: TextDirection.ltr,
          style: TextStyle(
              color: Colors.black87, fontSize: 14, fontStyle: FontStyle.italic),
        ),
      ),
    );
  }
}
