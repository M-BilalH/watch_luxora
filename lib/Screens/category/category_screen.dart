import 'package:flutter/material.dart';
import 'package:watch_luxora/Screens/account/account_screen.dart';
import 'package:watch_luxora/Screens/cart/cart_screen.dart';
import 'package:watch_luxora/Screens/notification/notification_screen.dart';
import 'package:watch_luxora/Screens/search/search_screen.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        shadowColor: Colors.black,
        leading: Image.asset("assets/wllogo.png",color: Colors.black,),
        actions: [
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder:(context)=> SearchScreen()));
              },
              child: Icon(Icons.search_outlined)),
           ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             
             child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder:(context)=> notification_screen()));
              },
              child: Icon(Icons.notifications_none_outlined)),
           ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: (){
                showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        builder: (context) => Account_Sheet(),
      );
              },
              child: Icon(Icons.favorite_outline)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart_Screen()));
              },
              child: Icon(Icons.shopping_cart)),
          )
        ],
      ),
      
      body: Center(child: Text("Category Screen")),
    );
  }
}