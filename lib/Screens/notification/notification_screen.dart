import 'package:flutter/material.dart';

class notification_screen extends StatefulWidget {
  const notification_screen({super.key});

  @override
  State<notification_screen> createState() => _notification_screenState();
}

class _notification_screenState extends State<notification_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
   leading:Image.asset("assets/wllogo.png",color: Colors.black,),
   actions: [
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Icon(Icons.search_outlined),
           ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Icon(Icons.notifications_none_outlined),
           ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.favorite_outline),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.shopping_cart),
          ),
        ],
  ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.notifications),
          Center(child: Text("Notifications Show Here"))
        ],
      ),
    );
  }
}