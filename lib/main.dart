import 'package:app1/Status.dart';
import 'package:app1/Water.dart';
import 'package:app1/Weight.dart';
import 'package:app1/loading.dart';
import 'package:flutter/material.dart';
import 'package:app1/NavBar.dart';
import 'package:app1/SleepHours.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
      '/':(context) => Loading(),
      '/Home':(context) => MyHomePage(),
      '/Status':(context) => Status(),
      '/SleepHours':(context) => SleepHours(),
      '/Water':(context) => Water(),
      '/Weight':(context) => Weight(),
    },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      drawer: NavBar(),
      appBar: AppBar(
        title: Text("Home Page",
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700 ),),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
        shadowColor: Colors.transparent,
      ),
    );
  }
}


