import 'package:flutter/material.dart';

class InfoDetailPage extends StatefulWidget {
  static String tag = 'info-page';
  @override
  _InfoDetailPageState createState() => new _InfoDetailPageState();
}

class _InfoDetailPageState extends State<InfoDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('二级页面'),
        brightness: Brightness.light,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Text('Hello Wolrd, Made by Yifan', style: TextStyle(fontSize: 22.0, color: Colors.white),),
        ),
      ),
    );
  }
}