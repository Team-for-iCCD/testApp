import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_2/screens/add_order.dart';
import 'package:flutter_application_2/screens/order_list.dart';
import 'package:flutter_application_2/screens/regist_menu.dart';
import 'package:flutter_application_2/screens/scan.dart';
import 'package:flutter_application_2/widgets/bottom_navigation_bar.dart';

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
      initialRoute: '/main',
      routes: {
        '/main': (context) => const MyHomePage(title: 'main'),
        '/addorder': (context) => const AddOrderView(),
        '/orderlist': (context) => const OrderList(),
        '/registmenu': (context) => const RegistMenu(),
        '/scan': (context) => const Scan(),
      },
    );
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
  with SingleTickerProviderStateMixin{
    static const List<Tab> tabs=<Tab>[
      Tab(text: 'One',),
      Tab(text: 'Two',),
      Tab(text: 'Three',),
    ];
    late TabController _tabController;

    @override
    void initState(){
      super.initState();
      _tabController=TabController(length: tabs.length, vsync: this);
    }

    @override
    Widget build(BuildContext context){
      return Scaffold(
        appBar: AppBar(
          title: const Text('main'),
          bottom: TabBar(
            tabs: tabs,controller: _tabController,
          ),
        ),
        body: TabBarView(children: tabs.map((Tab tab){return createTab(tab);}).toList(),),
      );
    }

    Widget createTab(Tab tab){
      return Center(
        child: Text(
          'This is "${tab.text}" Tab.',
          style: const TextStyle(
            fontSize: 32,
            color: Colors.blue,
          ),
        ),
      );
    }
  }
  /*static final _data = [
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
      bottomNavigationBar: const MyBottomNavigationBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {Navigator.pushNamed(context, '/addorder')},
        child: const Icon(Icons.next_plan),
      ),
    );
  }*/
}
