import 'package:ccb_test/screen/home_screen.dart';
import 'package:ccb_test/screen/mine_screen.dart';
import 'package:ccb_test/screen/service_screen.dart';
import 'package:flutter/material.dart';

class ScreenPage extends StatefulWidget {
  static String tag = 'home-page';
  ScreenPageState createState() => new ScreenPageState();
}

class ScreenPageState extends State<ScreenPage> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new Stack(
          children: <Widget>[
            new Offstage(
              offstage: index != 0,
              child: new TickerMode(
                enabled: index == 0,
                child: HomeScreen(),
              ),
            ),
            new Offstage(
              offstage: index != 1,
              child: new TickerMode(
                enabled: index == 1,
                child: ServiceScreen(),
              ),
            ),
            new Offstage(
              offstage: index != 2,
              child: TickerMode(
                enabled: index == 2,
                child: MineScreen(),
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: index,
            onTap: (int index) {
              setState(() {
                this.index = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  title: Text("首页")
              ),
              BottomNavigationBarItem(
                  icon:  Icon(Icons.hot_tub),
                  title: Text("热点服务")
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.people),
                  title: Text('我')
              )
            ])
    );
  }

}