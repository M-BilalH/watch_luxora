import 'package:flutter/material.dart';
import 'package:watch_luxora/components/primarybutton.dart';

class Cart_Screen extends StatefulWidget {
  const Cart_Screen({super.key});

  @override
  State<Cart_Screen> createState() => _Cart_ScreenState();
}

class _Cart_ScreenState extends State<Cart_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SHOPPING BAG",style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w500
        ),),
        elevation: 2,
        shadowColor: Colors.black,
      ),
      
body: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Center(
      child: Text("Your bag is empty",style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w800
          ),),
    ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: 50,
            width: 200,
            child: PrimaryButton(title: "Continue Shopping", onPressed:(){ Navigator.pop(context);})),
        )
  ],
),
    );
  }
}