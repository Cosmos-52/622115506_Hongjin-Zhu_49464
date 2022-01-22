// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:firstapp/pages/cal.dart';
import 'package:firstapp/pages/contact.dart';
import 'package:firstapp/pages/home.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: Mainpage()
    );
  }
}

class Mainpage extends StatefulWidget {
  const Mainpage({ Key? key }) : super(key: key);

  @override
  _MainpageState createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  int currentindex=0;
  final tabs=[Homepage(),CalculatePage(),Contactpage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("calculator Application"),
      ),
      body: tabs[currentindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentindex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Homepage"),
          BottomNavigationBarItem(icon: Icon(Icons.calculate),label: "Calculate"),
          BottomNavigationBarItem(icon: Icon(Icons.contact_mail),label: "Contact")
        ],
        onTap: (index){
          setState(() {
            print(index);
            currentindex=index;
          });
        },
      ),
    );
  }
}


