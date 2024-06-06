import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  void _increment() {
    //setStateで画面に反映
    setState(() {
      _counter++;
    });
  }

  void _decrement() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Row(children: [Icon(Icons.create), Text("1st title")]),
        ),
        body: Column(children: [
          const Text("Hello Flutter"),
          const Text("test application"),
          TextButton(onPressed: _decrement, child: const Text("text button")),
          Text(
            '$_counter',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          if (_counter % 2 == 0)
            const Text("Even",
                style: TextStyle(fontSize: 20, color: Colors.red)),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.favorite,
                color: Colors.pink,
                size: 24,
              ),
              Icon(
                Icons.audiotrack,
                color: Colors.green,
                size: 30,
              ),
              Icon(
                Icons.beach_access,
                color: Colors.blue,
                size: 36,
              )
            ],
          )
        ]),
        floatingActionButton: FloatingActionButton(
          onPressed: _increment,
          child: const Icon(Icons.add),
        ),
        drawer: const Drawer(
            child: Center(
          child: Text("Drawer"),
        )),
        endDrawer: const Drawer(
          child: Center(
            child: Text("EndDrawer"),
          ),
        ));
  }
}
