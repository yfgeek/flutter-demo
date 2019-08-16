
import 'package:ccb_test/compoments/carousel.dart';
import 'package:ccb_test/compoments/info_list_view.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final String title;

  const HomeScreen({Key key, this.title}) : super(key: key);
  @override
  HomeScreenState createState() => new HomeScreenState(this.title);
}

class HomeScreenState extends State<HomeScreen> {

  final String topic;
  HomeScreenState(this.topic);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        title: Text('建行比赛专用 一凡'),
      ),
      body: new Column(
        children: <Widget>[
          Expanded(
            child: Container(
              child: new Carousel(),
            ),
            flex: 1,
          ),
          Expanded(
            child: Container(
              child: new InfoListView(),
            ),
            flex: 3,
          ),
        ],
      )
    );
  }
}
