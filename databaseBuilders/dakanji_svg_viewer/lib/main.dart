import 'dart:ffi';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';
import 'package:database_builder/database_builder.dart';
import 'package:flutter/services.dart' show PlatformAssetBundle, rootBundle;
import 'package:path_provider/path_provider.dart';

// final kanjiBox = 'kanji_svg';
// final kanjiBox = "assets\\kanji_svg";
// final kanjiBox = rootBundle.loadString("assets/kanji_svg.hive");
// final kanjiBoxByte = await PlatformAssetBundle().load('assets/kanji_svg.hive');
// var bytes = rootBundle
//           .load('assets/kanji_svg.hive')
//           .then((value) => value.buffer.asUint8List());

void main() async {
  // final kanjiBoxByte = await PlatformAssetBundle().load('assets/kanji_svg.hive');
  var tester = await getApplicationDocumentsDirectory();
  await Hive
    ..initFlutter()
    ..registerAdapter(KanjiSVGAdapter());
  // final kanjiBoxByte = await PlatformAssetBundle().load('assets/kanji_svg.hive');
  // var _bytes = await rootBundle
  //           .load('assets/kanji_svg.hive')
  //           .then((value) => value.buffer.asUint8List());
  // var test = await Hive.openBox('kanji_svg', bytes: await bytes);
  await Hive.openBox('kanji_svg', bytes: await rootBundle
          .load('assets/kanji_svg.hive')
          .then((value) => value.buffer.asUint8List()));
  // print(Hive.box<KanjiSVG>('kanji_svg').get("!")!.SVG);

  // await Hive.openBox<KanjiSVG>('kanji_svg');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  Box SVGBox = Hive.box('kanji_svg');

  _MyHomePageState(){
    super.initState();

  }
  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }
  //   final Widget svg = SvgPicture.asset(
  // Hive.box<KanjiSVG>('kanji_svg').get("!")!.SVG,);
  // final Widget svg = SvgPicture.asset(
  // SVGBox.get("!")!.SVG,);
  // final Widget testSVG = SvgPicture.network()
  
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SvgPicture.string(
              SVGBox.get("あ").SVG),
            // const Text(
            //   'You have pushed the button this many times:',
            // ),
            // Text(
            //   '$_counter',
            //   style: Theme.of(context).textTheme.headline4,
            // ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
