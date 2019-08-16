import 'package:ccb_test/pages/info_detail_page.dart';
import 'package:flutter/material.dart';

class InfoListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(itemCount: 40, itemBuilder: buildItem);

  }

  Widget buildItem(BuildContext context, int index) {
    //设置分割线
    if (index.isOdd) return new Divider();
    //设置字体样式
    TextStyle textStyle =
    new TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0);

    int id = index ~/ 2;
    //设置Padding
    return new FlatButton(
        padding: const EdgeInsets.all(8.0),
        onPressed: () => _intoDetailPage(context,index),
        child: new Text("资讯信息 $id", style: textStyle));
  }

  _intoDetailPage(BuildContext context, int index) {
    if(index == 0){
      Navigator.of(context).pushNamed(InfoDetailPage.tag);
    }
  }

}
