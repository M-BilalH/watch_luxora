import 'package:flutter/material.dart';
import 'package:watch_luxora/Home_Component/grid_home.dart';

class PLIST extends StatefulWidget {
  const PLIST({super.key});

  @override
  State<PLIST> createState() => _PLISTState();
}

class _PLISTState extends State<PLIST> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Watch Luxora"),
      ),
      body: GridView.count(crossAxisCount: 3,
      
      children: [
Column(
        children: [
          Container(
           height: 130,
           width: 130,
            color: Colors.white,
            child: Image.asset("assets/products/l1.png",fit: BoxFit.contain,),
          ),
          Text("Rs 1000",style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold
          ),)
        ],
      )
      ],),
    );
  }
}