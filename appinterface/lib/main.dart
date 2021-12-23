// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "momentpage",
      home: MomentPage(),
    );
  }

  // This widget is the root of your application.

}

class MomentPage extends StatefulWidget {
  const MomentPage({Key? key}) : super(key: key);

  @override
  _MomentPageState createState() => _MomentPageState();
}

class _MomentPageState extends State<MomentPage> {
  @override
  Widget build(BuildContext context) {
    List momentData = [
      'https://cdn.pixabay.com/photo/2021/09/25/19/22/animal-6655641__340.jpg',
      'Hongjin Zhu',
      'send time',
      'description',
      'https://cdn.pixabay.com/photo/2021/12/10/13/59/star-6860582__480.jpg',
      'viewtimes',
      'viewer',
      'https://cdn.pixabay.com/photo/2021/12/18/14/10/rain-6878830__340.jpg'
    ];
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.blue[200],
                      image: DecorationImage(
                          image: NetworkImage(momentData[7]),
                          fit: BoxFit.cover,
                         )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //back 
                      Container(
                        margin: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                      //friend moment-string
                      Container(
                        margin: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Container(
                              child: Text(
                                "Friend Moment",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      //icon-mail
                      Container(
                        margin: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Icon(
                              Icons.mail,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                      //icon-add
                      Container(
                        margin: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Icon(
                              Icons.add_circle_outlined,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //photo
                      Container(
                        margin: const EdgeInsets.only(top: 8),
                        child: Column(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.grey[700],
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 8),
                              child: Text(
                                "Photo",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey[600],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      //Moment
                      Container(
                        margin: const EdgeInsets.only(top: 8),
                        child: Column(
                          children: [
                            Icon(
                              Icons.comment,
                              color: Colors.grey[700],
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 8),
                              child: Text(
                                "Moment",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey[600],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      //Decoration
                      Container(
                        margin: const EdgeInsets.only(top: 8),
                        child: Column(
                          children: [
                            Icon(
                              Icons.auto_fix_high_sharp,
                              color: Colors.grey[700],
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 8),
                              child: Text(
                                "Decorate",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey[600],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      //game
                      Container(
                        margin: const EdgeInsets.only(top: 8),
                        child: Column(
                          children: [
                            Icon(
                              Icons.gamepad,
                              color: Colors.grey[700],
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 8),
                              child: Text(
                                "Game",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey[600],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      //video
                      Container(
                        margin: const EdgeInsets.only(top: 8),
                        child: Column(
                          children: [
                            Icon(
                              Icons.video_call,
                              color: Colors.grey[700],
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 8),
                              child: Text(
                                "Video",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey[600],
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  child: ListTile(
                    leading: Image.network(
                      momentData[0],
                      height: 40,
                    ),
                    title: Text(momentData[1]),
                    subtitle: Text(momentData[2]),
                  ),
                ),
                Container(
                  child: ListTile(
                    title: Text(momentData[3]),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 8),
                  padding: EdgeInsets.all(20),
                  height: 340,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network(
                        momentData[4],
                        fit: BoxFit.cover,
                      )
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Expanded(
                        /*1*/
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            /*2*/
                            Container(
                              padding: const EdgeInsets.all(8),
                              child: Text(
                                momentData[5],
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.grey[500],
                      ),
                      Icon(
                        Icons.comment,
                        color: Colors.grey[500],
                      ),
                      Icon(
                        Icons.share,
                        color: Colors.grey[500],
                      ),
                    ],
                  ),
                ),
                Container(
                  child: TextField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.comment), labelText: "Comment here"),
                  ),
                )
              ],
            ),
            // child: ListTile(
            //   leading: Image.network(momentData[0],height: 40,),
            //   title: Text(momentData[1]),
            //   subtitle: Text(momentData[2]),
            // ),
          );
        },
        itemCount: 1,
      ),
    );
  }
}
