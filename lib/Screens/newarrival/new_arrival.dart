import 'package:flutter/material.dart';

class New_Arrival_Screen extends StatefulWidget {
  const New_Arrival_Screen({super.key});

  @override
  State<New_Arrival_Screen> createState() => _New_Arrival_ScreenState();
}

class _New_Arrival_ScreenState extends State<New_Arrival_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("New Arrival Screen")),
    );
  }
}