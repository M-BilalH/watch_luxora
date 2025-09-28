import 'package:flutter/material.dart';
import 'package:watch_luxora/products_list/Category_list.dart';
import 'package:watch_luxora/products_list/products.dart';

class Product_Screen extends StatefulWidget {
  String title;
  String img;
 Product_Screen({super.key,required this.img,required this.title});

  @override
  State<Product_Screen> createState() => _Product_ScreenState();
}

class _Product_ScreenState extends State<Product_Screen> {
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.black,
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(widget.img,fit: BoxFit.fill,)),
            CTGLIST(),
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: GridView.builder(gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, // Number of columns
                  crossAxisSpacing: 10.0,
                  childAspectRatio: 0.79,
                  mainAxisSpacing: 8.0,
                ),
                shrinkWrap: true,
               physics: NeverScrollableScrollPhysics(),
              itemCount: 30, // Number of items
    itemBuilder: (context, index) {
      return GridItem2(title: "Rs:2000", img: "assets/l1.png");
    },
              ),
            ),
          ],
        ),
      ),
    );
  
  }
}