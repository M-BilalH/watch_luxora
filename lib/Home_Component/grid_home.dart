import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GridItem extends StatefulWidget {
   late String title;
  late String img1;
  late String img2;
Color clr;
 GridItem({super.key,required this.title,required this.img1,required this.clr,required this.img2});

  @override
  State<GridItem> createState() => _GridItemState();
}

class _GridItemState extends State<GridItem> {

      List<String> images=[];
    int _currentIndex = 0;
      Timer? _timer;
  final Random _random = Random();// Declare a Timer variable
        @override
    void initState() {
      super.initState();
        images = [widget.img1, widget.img2];
       _startRandomTimer();
    }
    void _startRandomTimer() {
    // Pick a random duration between 1 and 10 seconds
    final randomDuration = Duration(seconds: _random.nextInt(5) + 1);

    _timer = Timer(randomDuration, () {
      if (!mounted) return; // ensure widget is still in tree
      setState(() {
        _currentIndex = (_currentIndex + 1) % images.length;
      });
      _startRandomTimer(); // schedule next one with new random duration
    });
  }
 @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
  @override
    Widget build(BuildContext context) {
    return Column(
        children: [
          Container(
           height: 130,
           width: 130,
            color: widget.clr,
            child: Image.asset(images[_currentIndex],fit: BoxFit.contain,),
          ),
          Text(widget.title,style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold
          ),)
        ],
      );
}}