import 'package:app1/Status.dart';
import 'package:app1/main.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
       child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child:Text("Heal-Thy" , 
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),),
              decoration: BoxDecoration(color : Colors.greenAccent), 
            ),
            ListTile(
              leading: Icon(Icons.home),
              title : Text('Home', style: TextStyle(fontWeight: FontWeight.w700),),
              onTap: () => Navigator.pushReplacementNamed(context, '/Home')
            ),
            ListTile(
              leading: Icon(Icons.assessment),
              title: Text('Status', style: TextStyle(fontWeight: FontWeight.w700),),
              onTap: () => Navigator.pushReplacementNamed(context, '/Status')
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text('Quote', style: TextStyle(fontWeight: FontWeight.w700),),
              onTap: () => print('null'),
            ),
            ListTile(
              leading: Icon(Icons.menu_book),
              title: Text('Meal Plan', style: TextStyle(fontWeight: FontWeight.w700),),
              onTap: () => print('null'),
            ),
            Divider(color: Colors.black,),
            ListTile(
              leading: Icon(Icons.help),
              title: Text('Q&A', style: TextStyle(fontWeight: FontWeight.w700),),
              onTap: () => print('null'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings', style: TextStyle(fontWeight: FontWeight.w700),),
              onTap: () => print('null'),
            ),
            Divider(color: Colors.black,),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Log out', style: TextStyle(fontWeight: FontWeight.w700),),
              onTap: () => print('null'),
            ),
          ],
        ),
    );
  }
}