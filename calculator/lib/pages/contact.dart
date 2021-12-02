import 'package:flutter/material.dart';

class Contactpage extends StatefulWidget {
  const Contactpage({ Key? key }) : super(key: key);

  @override
  _ContactpageState createState() => _ContactpageState();
}

class _ContactpageState extends State<Contactpage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Center(
          child: Column(
            children: [
              Text("Hongjin Zhu"),
              Text("China")
            ],
          ),
        )
      ],
      
    );
  }
}