import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
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


  Timer? _timer;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _timer = Timer.periodic(const Duration(milliseconds: 250), (timer) {
      setState(() {
        flag = ! flag;
        if(flag){
          myColor = Colors.deepOrange;
        }
        else{
          myColor = Colors.green;
        }
      });
    });
  }

  bool flag = true;
  Color myColor = Colors.green;



  @override
  Widget build(BuildContext context) {
    Decoration myDecor = BoxDecoration(
      borderRadius: BorderRadius.circular(50),
      color: Colors.green
    );

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
  borderRadius: BorderRadius.circular(50),
  color: myColor,
        )
      )
    ),);
  }
}
