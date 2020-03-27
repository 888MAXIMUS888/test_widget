import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _controller = TextEditingController();
  String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Container(
                width: 200,
                height: 100,
                child: TextField(controller: _controller)),
          ),
          RaisedButton(
              child: Text("Send"),
              onPressed: () {
                setState(() {
                  text = _controller.text;
                });
              }),
          Container(
              decoration: BoxDecoration(border: Border.all(width: 1)),
              width: 200,
              height: 100,
              child: Center(child: Text(text ?? "")))
        ],
      ),
    );
  }
}
