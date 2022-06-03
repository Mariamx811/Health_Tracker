import 'package:app1/Status.dart';
import 'package:flutter/material.dart';


class Weight extends StatefulWidget {
  const Weight({ Key? key }) : super(key: key);

  @override
  State<Weight> createState() => _WeightState();
}

class _WeightState extends State<Weight> {
  TextEditingController wcontroller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.pushReplacementNamed(context, '/Status')
            ), 
        title: Text("Weight",
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
            margin: EdgeInsets.only(right: 260),
            child: Text(
              "Add Weight",
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
                      controller: wcontroller,
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