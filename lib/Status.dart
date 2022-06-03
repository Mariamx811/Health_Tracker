import 'package:app1/Mybutton.dart';
import 'package:app1/states.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:app1/NavBar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';


class Status extends StatefulWidget {
  const Status({ Key? key }) : super(key: key);

  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
    DateTime _selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
       return Scaffold(
         extendBodyBehindAppBar: true,
      drawer: NavBar(),
      appBar: AppBar(
        title: Text("Status",
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700 ),),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body:
      SingleChildScrollView(
    child:
    Column(
    children:[
    Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.greenAccent.withOpacity(0.9),
              Colors.green,
           ],
           begin: const FractionalOffset(0, 0.4),
           end: Alignment.topRight,
          ),
        ),
      child: Column(
        children: [
          _addTaskBar(),
          Container(
            margin: const EdgeInsets.only(top: 20 , left: 20),
            child: DatePicker(
              DateTime.now().subtract(Duration(days: 28)),
              height: 100,
              width: 80,
              initialSelectedDate: DateTime.now(),
              
              selectionColor: Colors.blueGrey,
              selectedTextColor: Colors.white,
              dateTextStyle: GoogleFonts.lato(
                textStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.grey
              ),
              ),
              dayTextStyle: GoogleFonts.lato(
                textStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.grey
              ),
              ),
              monthTextStyle: GoogleFonts.lato(
                textStyle: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.grey
              ),
              ),
             onDateChange: (date){
                _selectedDate = date ;
             }
            ),
          ),
          Divider(color: Colors.black87,),
          States(dateTime: _selectedDate,),
        ],
      ),
    ),
    ],
      ),
      ),
  );
  }
}
_addTaskBar(){
  return Container(
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left : 20 , top: 70 , right: 20), 
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(DateFormat.yMMMd().format(DateTime.now()),
                        style: subStyle,
                      ),
                      Text("Today",
                        style: HeadStyle,
                      )
                    ],
                  ),
              ),
            ],
          ),
        );
       
}
TextStyle get subStyle{
  return GoogleFonts.lato(
      textStyle: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.grey,
      ),
  );
}

TextStyle get HeadStyle{
  return GoogleFonts.lato(
      textStyle: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold
      )
  );
}