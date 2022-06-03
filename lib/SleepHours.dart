import 'package:app1/Status.dart';
import 'package:flutter/material.dart';

class SleepHours extends StatefulWidget {
  final DateTime? selectedtime ;
  SleepHours({ Key? key,this.selectedtime}) : super(key: key);

  @override
  State<SleepHours> createState() => _SleepHoursState();
}

class _SleepHoursState extends State<SleepHours> {
  TextEditingController scontroller = new TextEditingController();
  DateTime _SelectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.pushReplacementNamed(context, '/Status')
            ), 
        title: Text("Sleep Hours",
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700 ),),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
        shadowColor: Colors.transparent,
        elevation: 0,
      ),
      body:
    Column(
      children: [
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
        ),
        Container(
      margin: EdgeInsets.only(top:16),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(right: 210),
            child: Text(
              "Add sleep Hours",
              style: subStyle,
             
              ),
          ),
            Container(
              height: 52,
              margin: EdgeInsets.only(left: 8,top: 8, right: 8),
              padding: EdgeInsets.only(left: 14),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                  
                ),
                borderRadius: BorderRadius.circular(12)
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: scontroller,
                      autofocus: false,
                      cursorColor: Colors.grey,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400
                      ),
                      decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.greenAccent,
                              width: 0,
                            ),
                        ),
                        
                      ),
                    ) ,
                    ),
                ],
              ),
            ),
          
        ],
      ),
        ),
           Container(
          child: 
          ElevatedButton(
            onPressed: () => Navigator.pushReplacementNamed(context, '/Status'),
            child: 
            Text("Submit"),
          ),
        ),
      ],
    ),
    );
  }
}