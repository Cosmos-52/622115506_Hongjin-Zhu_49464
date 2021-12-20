import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:secondapp/pages/detail.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Computer Knowledge"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: FutureBuilder(
          builder: (context, snapshot){
            var data = json.decode(snapshot.data.toString());
            return ListView.builder(
              itemBuilder: (BuildContext context, int index){
              return MyBox(data[index]['title'], data[index]['subtitle'], data[index]['image_url']);
            },
            itemCount: data.length,
          );
          },
          future: DefaultAssetBundle.of(context).loadString('assets/data.json'),
        )
      ),
    );
  }

  Widget MyBox(String title, String subtitle, String imagelink){
    return Container(
      margin: EdgeInsets.only(top: 8),
      padding: EdgeInsets.all(20),
      height: 150,
      decoration: BoxDecoration(
        color: Colors.blue[200],
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: NetworkImage(imagelink),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.darken)
        )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.bold
            ),
          ),
          Text(
            subtitle,
            style: TextStyle(
              fontSize: 15,
              color: Colors.white
            ),
          ),
        ],
      ),
    );
  }
}