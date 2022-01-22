// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CalculatePage extends StatefulWidget {
  const CalculatePage({ Key? key }) : super(key: key);

  @override
  _CalculatePageState createState() => _CalculatePageState();
}



class _CalculatePageState extends State<CalculatePage> {

  TextEditingController quantity=TextEditingController();
  double price = 100000;
  TextEditingController result=TextEditingController();
  TextEditingController s=TextEditingController();

  @override
  void initState() {
    super.initState();
    result.text="Buy X apples.Because each apple cosT X THB,You have to pay X THB";
  }
  @override
  Widget build(BuildContext context) {
     return ListView(
      children:[
         Padding(
           padding: const EdgeInsets.all(8),
           child: Center(
           child: Column(
            children: [
            Image.asset("assets/sad.png",width: 200,),
            SizedBox(height: 20,),
            Text("Calculator Program",style: TextStyle(fontFamily: "Maa"),),
            SizedBox(height: 20,),
            TextField(
              controller: quantity,
              decoration: InputDecoration(
                labelText: "Apple Amount",border: OutlineInputBorder()
              )
            ),
             SizedBox(height: 20,),
            TextField(
              controller: s,
              decoration: InputDecoration(labelText: "Apple price",border: OutlineInputBorder()),
            ),
            SizedBox(height: 20,),
            ElevatedButton(
               onPressed: () {
                 var cal =double.parse(quantity.text)*price;
                 var total=double.parse(quantity.text)*double.parse(s.text);
                 print("Apple quality: ${quantity.text} Total ${cal} BTH");
                 print("total ${total}");
                 setState(() {
                    result.text="Buy ${quantity.text} apples.Because each apple cosT ${s.text} THB,You have to pay ${total} THB";
                 });
                
               }, 
               child: Text("Calculate"),
               style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Color(0xffAFCBFF)),
                padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(10, 30, 50, 70)),
                textStyle: MaterialStateProperty.all(TextStyle(fontFamily: "Maa",fontSize: 20))
                ),
                ),
            SizedBox(height: 20,),
            Text(result.text)
          ],
        ),
      )
    ),
    ],
    );
  }
}