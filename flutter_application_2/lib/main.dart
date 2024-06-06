import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Generated App',
      theme: new ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
        primaryColor: const Color(0xFF212121),
        accentColor: const Color(0xFF64ffda),
        canvasColor: const Color(0xFF303030),
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('App Name'),
      ),
      body: new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Text(
                    "Text1",
                    style: new TextStyle(
                        fontSize: 41.0,
                        color: const Color(0xFFffffff),
                        fontWeight: FontWeight.w200,
                        fontFamily: "Roboto"),
                  )
                ]),
            new Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Checkbox(key: null, onChanged: checkChanged, value: true),
                  new Text(
                    "CheckBox",
                    style: new TextStyle(
                        fontSize: 20.0,
                        color: const Color(0xFFffffff),
                        fontWeight: FontWeight.w100,
                        fontFamily: "Roboto"),
                  )
                ]),
            new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Slider(
                    key: null,
                    onChanged: sliderChanged,
                    value: 0.35,
                  )
                ]),
            new RaisedButton(
                key: null,
                onPressed: buttonPressed,
                color: const Color(0xFFe0e0e0),
                child: new Text(
                  "Button",
                  style: new TextStyle(
                      fontSize: 25.0,
                      color: const Color(0xFF000000),
                      fontWeight: FontWeight.w200,
                      fontFamily: "Merriweather"),
                ))
          ]),
    );
  }

  void sliderChanged(double value) {}

  void buttonPressed() {}

  void checkChanged() {}
}
