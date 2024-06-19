import 'package:flutter/material.dart'
    show
        AlertDialog,
        Alignment,
        AppBar,
        BottomNavigationBar,
        BottomNavigationBarItem,
        Brightness,
        BuildContext,
        Color,
        Colors,
        Column,
        Container,
        EdgeInsets,
        ElevatedButton,
        FontWeight,
        Icon,
        Icons,
        MainAxisAlignment,
        MainAxisSize,
        MaterialApp,
        Navigator,
        Padding,
        Scaffold,
        State,
        StatefulWidget,
        StatelessWidget,
        Text,
        TextButton,
        TextEditingController,
        TextField,
        TextStyle,
        ThemeData,
        Widget,
        runApp,
        showDialog;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  final title = 'Sample Flutter';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(brightness: Brightness.dark),
        home: MyHomePage(title: title));
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class Data {
  final String _name;
  final int _price;
  Data(this._name, this._price) : super();

  @override
  String toString() {
    return '$_name:${_price}yen';
  }
}

class _MyHomePageState extends State<MyHomePage> {
  static final _data = [
    Data('Apple', 200),
    Data('Orange', 150),
    Data('Peach', 300)
  ];
  Data _item = _data[0];
  static final _controller = TextEditingController();
  static var _index = 0;

  void buttonPressed() {
    setState(() {
      int d = int.parse(_controller.text);
      for (var e in _data) {
        if (d == e._price) {
          _item = e;
          return;
        }
      }
      showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('No Data'),
          content: const Text('Input Value was inputted'),
          actions: <Widget>[
            TextButton(
                onPressed: () => Navigator.pop<String>(context, 'Cancel'),
                child: const Text('Cancel')),
            TextButton(
                onPressed: () => Navigator.pop<String>(context, 'OK'),
                child: const Text('OK'))
          ],
        ),
      );
    });
  }

  void tapBottomIcon(int value) {
    setState(() {
      _index = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Container(
        padding: const EdgeInsets.all(10),
        alignment: Alignment.topCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                _item.toString(),
                style:
                    const TextStyle(fontSize: 32, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                controller: _controller,
                style: const TextStyle(
                    fontSize: 28,
                    color: Color(0xffFF0000),
                    fontWeight: FontWeight.w400,
                    fontFamily: "Roboto"),
              ),
            ),
            ElevatedButton(
              onPressed: buttonPressed,
              child: const Text('Push',
                  style: TextStyle(
                      fontSize: 32,
                      color: Color(0xffFFFFFF),
                      fontWeight: FontWeight.w400,
                      fontFamily: "Roboto")),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        backgroundColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.format_list_bulleted, color: Colors.white),
            label: 'Order List',
            backgroundColor: Colors.lightBlueAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.format_list_bulleted_add, color: Colors.white),
            label: 'Add Order',
            backgroundColor: Colors.lightGreenAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera, color: Colors.white),
            label: 'Scan',
            backgroundColor: Colors.purpleAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_to_photos, color: Colors.white),
            label: 'Regist Menu',
            backgroundColor: Colors.redAccent,
          )
        ],
        onTap: tapBottomIcon,
      ),
    );
  }
}
