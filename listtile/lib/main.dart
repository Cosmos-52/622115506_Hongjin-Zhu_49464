import 'package:flutter/material.dart';
import 'package:listtile/details.dart';
void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "List tile",
      home: Home(title: '',),
    );
  }
}

class Home extends StatefulWidget {
  // const Home({ Key? key }) : super(key: key);
  final String title;

  const Home({Key? key, required this.title}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final items = List<String>.generate(1000,(i) => "Item $i");
  
  @override
  Widget build(BuildContext context) {
    List myData = ['apple','banana','orange'];
    return Scaffold(
      appBar: AppBar(title: Text(widget.title),),
      // body: ListView.builder(itemBuilder: (context, index){
      //   return ListTile(
      //     onTap: (){},
      //     leading: Icon(Icons.map),
      //     title: Text(items[index]),
      //   );
      // })
       body: ListView.builder(
         itemBuilder: (BuildContext context, int index){
           return Card(
             child: ListTile(
               leading: FlutterLogo(),
               title: Text(myData[index]),
               onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=> const DetailsPage()));
               },
             ),
           );
         },
         itemCount: myData.length,
       )
    );
  }
}