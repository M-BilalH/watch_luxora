import 'package:flutter/material.dart';
import 'package:watch_luxora/Screens/account/account_screen.dart';
import 'package:watch_luxora/Screens/cart/cart_screen.dart';
import 'package:watch_luxora/Screens/notification/notification_screen.dart';
import 'package:watch_luxora/Screens/search/search_screen.dart';
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
      return GridItem2(title: "Rolex Watch R01", img: "assets/l1.png",price: "Rs:2000",);
    },
              ),
            ),
          ],
        ),
      ),
    );
  
  }
}