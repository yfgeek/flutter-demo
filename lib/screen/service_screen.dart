import 'package:ccb_test/model/service.dart';
import 'package:flutter/material.dart';

class ServiceScreen extends StatefulWidget {
  static String tag = 'info-page';
  @override
  _ServiceScreenState createState() => new _ServiceScreenState();
}

class _ServiceScreenState extends State<ServiceScreen> {
  final List<Service> _allServices = Service.allSerVice();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('热点服务'),
        brightness: Brightness.light,
      ),
      body: new ServiceGridView(_allServices),
    );
  }
}

class ServiceGridView extends StatelessWidget {
  final List<Service> allServices;

  ServiceGridView(this.allServices);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      padding: EdgeInsets.all(10),
      children: allServices.map((Service service) {
        return _getGridViewItemUI(context, service);
      }).toList(),
    );
  }

  Widget _getGridViewItemUI(BuildContext context, Service service) {
    return new Card(
        elevation: 2.0,
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(14.0))),  //设置圆角
        child: Column(
          children: <Widget>[
                new Image.asset(
                  service.image,
                  fit: BoxFit.cover,
                  height: 70,
                ),
                new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Text(
                      service.name,
                      style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
          ],
        ),
    );
  }
}