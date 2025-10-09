
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:redacted/redacted.dart';
import 'package:watch_luxora/products_list/single_product.dart';

// ignore: must_be_immutable
class GridItem2 extends StatefulWidget {
   late String title;
   late String price;
   late String img;

 GridItem2({super.key,required this.title,required this.img,required this.price});

  @override
  State<GridItem2> createState() => _GridItemState();
}

class _GridItemState extends State<GridItem2> {
  bool isloading=true;
  @override
    void initState() {
    super.initState();
    // Change isloading to false after 10 seconds
    Timer(const Duration(seconds: 5), () {
      setState(() {
        isloading = false;
      });
    });
  }
  @override
    Widget build(BuildContext context) {
    return Scaffold(
      
      body: InkWell(
        onTap: (){
          Navigator.push(context,MaterialPageRoute(builder: (context)=> Single_Product_Screen(img: widget.img,title: widget.title,price: widget.price,)));
        },
        child: Card(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom:6.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10)
                      ),
                     height: 110,
                     width: 130,
                      child: Image.asset(widget.img,fit: BoxFit.fill,),
                    ),
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(widget.title,style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(widget.price,style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                ],
              ).redacted(context: context, redact: isloading),
          ),
        ),
      ),
    );
}}