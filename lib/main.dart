
import 'package:flutter/material.dart';
import 'package:electroline/screens/home/Homepage.dart';
import 'screens/gpu.dart';



void main() {
  runApp(const MyApp());
}



class MyApp extends StatefulWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        home: MyHomePage(),
    routes: {
      '0': (context) => MyHomePage(),
      '1': (context) => MyHomePage(),
      '2': (context) => MyHomePage(),
      '3': (context) => gpu(),
    });
  }
}
