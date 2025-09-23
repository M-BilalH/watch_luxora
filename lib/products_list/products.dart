import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GridItem2 extends StatefulWidget {
   late String title;
   late String img;

 GridItem2({super.key,required this.title,required this.img});

  @override
  State<GridItem2> createState() => _GridItemState();
}

class _GridItemState extends State<GridItem2> {

  @override
    Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: Column(
            children: [
              Container(
               height: 140,
               width: 130,
                child: Image.asset(widget.img,fit: BoxFit.contain,),
              ),
              Text(widget.title,style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold
              ),)
            ],
          ),
      ),
    );
}}