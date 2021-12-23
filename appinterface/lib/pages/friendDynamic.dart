// ignore_for_file: file_names, camel_case_types, prefer_const_constructors

import 'dart:convert';

import 'package:flutter/material.dart';

class friendDynamicPage extends StatefulWidget {
  const friendDynamicPage({Key? key}) : super(key: key);

  @override
  _friendDynamicPageState createState() => _friendDynamicPageState();
}

class _friendDynamicPageState extends State<friendDynamicPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppBar(
          title: Text("test"),
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.all(4),
          child: FutureBuilder(
            builder: (context, snapshot) {
              var data = json.decode(snapshot.data.toString());
              return ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return momentBar(
                      data[index]['name'],
                      data[index]['description'],
                      data[index]['followername'],
                      data[index]['profileImage'],
                      data[index]['sendtime'],
                      data[index]['viewtimes'],
                      data[index]['momentImage']);
                },
                itemCount: data.length,
              );
            },
            future: DefaultAssetBundle.of(context)
                .loadString('assets/friendCard.json'),
          )),
    );
  }
}

Widget momentBar(
    String name,
    String description,
    String followername,
    String profileImage,
    String momentImage,
    String sendtime,
    String viewtimes) {
  return Container(
    margin: EdgeInsets.only(top: 8),
    padding: EdgeInsets.all(20),
    height: 150,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        //profileImage, name and time
        Container(
          child: Row(
            children: <Widget>[
              Container(
                child: Row(
                  children: [
                    Image(
                      image: NetworkImage(profileImage),
                      height: 20,
                    )
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      sendtime,
                      style: TextStyle(fontSize: 10, color: Colors.black),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),

        Text(
          description,
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        Container(
          child: Column(
            children: [
              Image(
                image: NetworkImage(momentImage),
                height: 100,
              ),
            ],
          ),
        ),

        Container(
          child: Row(children: <Widget>[
            Text(
              viewtimes,
              style: TextStyle(
                fontSize: 10,
                color: Colors.black,
              ),
            ),
            Icon(
              Icons.favorite,
              color: Colors.grey,
              size: 24.0,
              semanticLabel: 'Text to announce in accessibility modes',
            ),
            Icon(
              Icons.add_comment_rounded,
              color: Colors.grey,
              size: 30.0,
            ),
            Icon(
              Icons.share,
              color: Colors.grey,
              size: 36.0,
            ),
          ]),
        ),
        Text(
          followername,
          style: TextStyle(
            fontSize: 15,
            color: Colors.black,
          ),
        ),
        Container(
            child: Column(
          children: const <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'comment',
                ),
              ),
            ),
          ],
        )),
      ],
    ),
  );
}
