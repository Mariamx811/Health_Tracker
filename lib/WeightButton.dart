import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WeightButton extends StatelessWidget {
  const WeightButton({ Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: 
      RaisedButton(onPressed: () => Navigator.pushReplacementNamed(context, '/Weight'),
       child:
        Text("+", style: TextStyle(fontSize: 20),),    
        color: Color.fromARGB(255, 139, 94, 78),  
        textColor: Color.fromARGB(255, 240, 239, 234),  
        padding: EdgeInsets.all(8.0),  
        splashColor: Color.fromARGB(255, 156, 154, 154),  
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
          side: BorderSide(color: Colors.transparent),)
      ),
      margin: EdgeInsets.only(left: 200),
    );
 
  }
}