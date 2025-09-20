import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Categories extends StatefulWidget {
  String title;
  String url;
  Color color;
  Categories({super.key,required this.title,required this.url,required this.color});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5,right: 5),
      child: InkWell(
        child: Column(
          children: [
            CircleAvatar(backgroundImage: AssetImage(widget.url),
            radius: 35,
            backgroundColor:widget.color,),
            Text(widget.title),
          ],
        ),
      ),
    );
  }
}