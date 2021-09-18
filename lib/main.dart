import 'package:flutter/material.dart';

import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String mou = '';
  String moonmoon = '';
  String mandira = '';

  @override
  void initState() {
    super.initState();
    mou = "9831392198";
    moonmoon = '8777524430';
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: new AppBar(
          centerTitle: true,
          title: const Text(
            'DevineCare',
            style: TextStyle(
              color: Colors.red,
            ),
          ),
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: Column(children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton.icon(
                icon: Icon(
                  Icons.phone,
                  color: Colors.black,
                ),
                style: ElevatedButton.styleFrom(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 7.5),
                  primary: Colors.red,
                ),
                label: Text(
                  "Emergency Call",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                  ),
                ),
                onPressed: () async {
                  FlutterPhoneDirectCaller.callNumber(mou);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton.icon(
                icon: Icon(
                  Icons.phone,
                  color: Colors.black,
                ),
                style: ElevatedButton.styleFrom(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 7.5),
                  primary: Colors.red,
                ),
                label: Text(
                  "Emergency Call #2",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                  ),
                ),
                onPressed: () async {
                  FlutterPhoneDirectCaller.callNumber(moonmoon);
                },
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
