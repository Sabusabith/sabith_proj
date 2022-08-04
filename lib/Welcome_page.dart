import 'package:flutter/material.dart';

class Welcome_Page extends StatelessWidget {
  String name;

  Welcome_Page({required this.name});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.cyan,
        title: Text('Welcome Page', style: TextStyle(
            fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome',
              style: TextStyle(fontSize: 55, color: Colors.deepPurpleAccent,fontWeight: FontWeight.bold),),
            SizedBox(height: 20),
            Text(name,style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }

}