import 'package:app1/WaterButton.dart';
import 'package:app1/WeightButton.dart';
import 'package:flutter/material.dart';
import 'package:app1/Mybutton.dart';
import 'package:google_fonts/google_fonts.dart';

class States extends StatefulWidget {
  final DateTime? dateTime ;
  const States({ Key? key,this.dateTime }) : super(key: key);

  @override
  _StatesState createState() => _StatesState();
}

class _StatesState extends State<States> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: 
      Column(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 5,top: 20 , right: 5 , bottom: 5),
                padding: EdgeInsets.all(5),
                height: 90,
                width: 100,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 139, 94, 78),
                      Colors. black
                    ]
                  ),
                   borderRadius: BorderRadius.all(Radius.circular(18)),
                ),
                child: Column(
                  children: [
                    Text("Sleep Hours",
                    style: StateStyle,
                    textAlign: TextAlign.center,
                    ),
                    Icon(Icons.nightlight),
                  ],
                ),
              ),
              MyButton(),
            ],
          ),
          Divider(),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 5 , top: 5, right: 6, bottom: 5),
                padding: EdgeInsets.all(20),
                height: 90,
                width: 100,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                       Colors. black,
                       Color.fromARGB(255, 139, 94, 78),
                    ]
                  ),
                   borderRadius: BorderRadius.all(Radius.circular(18)),
                ),
                 child: Column(
                  children: [
                    Text("Water",
                    style: StateStyle,
                    textAlign: TextAlign.center,
                    ),
                    Icon(Icons.local_drink),
                  ],
                ),
              ),
              WaterButton(),
            ],
          ),
          Divider(),
            Row(
              children: [
                Container(
                margin: EdgeInsets.only(left: 5 , top: 5, right: 6, bottom: 5),
                padding: EdgeInsets.all(20),
                height: 90,
                width: 100,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 139, 94, 78),
                      Colors. black
                    ]
                  ),
                   borderRadius: BorderRadius.all(Radius.circular(18)),
                ),
                child: Column(
                  children: [
                    Text("Weight",
                    style: StateStyle,
                    textAlign: TextAlign.center,
                    ),
                    Icon(Icons.monitor_weight),
                  ],
                ),
                ),
                WeightButton(),
              ],
            ),
             Divider(),
            Row(
              children: [
                Container(
                margin: EdgeInsets.only(left: 5 , top: 5, right: 6, bottom: 5),
                padding: EdgeInsets.all(20),
                height: 90,
                width: 100,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 139, 94, 78),
                      Colors. black
                    ]
                  ),
                   borderRadius: BorderRadius.all(Radius.circular(18)),
                ),
                child: Column(
                  children: [
                    Text("Mood",
                    style: StateStyle,
                    textAlign: TextAlign.center,
                    ),
                    Icon(Icons.emoji_emotions),
                  ],
                ),
                ),
              ],
            ),
        ], 
      ),
    );
  }
}

Mybutton() {
}

TextStyle get StateStyle{
  return GoogleFonts.lato(
      textStyle: TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.bold,
        color: Colors.grey,
      )
  );
}