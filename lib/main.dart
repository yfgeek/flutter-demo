import 'package:ccb_test/pages/info_detail_page.dart';
import 'package:flutter/material.dart';

import 'pages/screen_page.dart';
import 'package:ccb_test/pages/login_page.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  final routes = <String,WidgetBuilder>{
    LoginPage.tag:(context)=>LoginPage(),
    ScreenPage.tag:(context)=>ScreenPage(),
    InfoDetailPage.tag:(context)=>InfoDetailPage(),
  };
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '登录页面',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primarySwatch: Colors.lightBlue,
        fontFamily: 'Nunito',
      ),
      home: new LoginPage(),
      routes: routes,
    );
  }
}
