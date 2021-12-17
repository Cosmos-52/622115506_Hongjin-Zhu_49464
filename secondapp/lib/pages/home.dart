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
      body: ListView(
        children: [
          MyBox(
            "Who I am?",
            "May take my whole life to think about it",
            "https://cdn.pixabay.com/photo/2021/10/12/04/00/frost-6702335_1280.jpg"
          ),
          SizedBox(height: 15,),
          MyBox(
            "Am I real?",
            "If I could be in someone else's dream",
            "https://cdn.pixabay.com/photo/2020/07/24/17/24/meadow-5434588__340.jpg"
          ),
          SizedBox(height: 15,),
          MyBox(
            "what make creature can think, can love, can cry for other?",
            "cell...but I prefer the soul is true",
            "https://cdn.pixabay.com/photo/2017/12/11/18/13/christmas-3012862__480.jpg"
          ),
          SizedBox(height: 15,),
          TextButton(
            onPressed: (){
              print("next page >>");
              Navigator.push(context, MaterialPageRoute(builder:  (context)=>DetailsPage()));
            }, 
            child: Text("read more")
          )
        ],
      ),
    );
  }

  Widget MyBox(String title, String subtitle, String imagelink){
    return Container(
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