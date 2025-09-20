import 'package:flutter/material.dart';
import 'package:watch_luxora/Home_Component/deal_zone.dart';
import 'package:watch_luxora/Home_Component/exclusice.dart';
import 'package:watch_luxora/Home_Component/grid_home.dart';
import 'package:watch_luxora/Home_Component/product_list.dart';
import 'package:watch_luxora/components/categories.dart';


class HomePage extends StatelessWidget {
   
  HomePage({super.key});

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
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.only(left: 10,top: 10),
                child: Container(
                  height: 100,
                  width: double.infinity,
                  child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Categories(title: "New Arrival", url: "assets/arrival.png",color: Colors.black,),
                          Categories(title: "Rolex", url: "assets/rolex.png",color: Colors.black,),
                          Categories(title: "Cartier", url: "assets/cartier.png",color: Colors.black,),
                          Categories(title: "Corum", url: "assets/corum.png",color: Colors.pinkAccent,),
                          Categories(title: "Hublot", url: "assets/hublot.png",color: Colors.black,),
                          Categories(title: "Patek", url: "assets/patek.png",color: Colors.black,),
                       
                        ],
                      ),
                ),),
                Container(
                  color: Colors.black,
                  height: 300,
                  width: double.infinity,
                  child: Image.asset('assets/banner.png',fit: BoxFit.fill,),
                ),
              Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text("TOP CATEGORY",style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
        ),),
              ),
              Container(
        height: 680,
        child: GridView(gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, // Number of columns
            crossAxisSpacing: 10.0,
            childAspectRatio: 0.8,
            mainAxisSpacing: 8.0,
          ),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
        children: [
      GridItem(title: "Rolex", img1: "assets/r1.png",clr: Colors.black,img2: "assets/r2.png"),
      GridItem(title: "Rolex", img1: "assets/wllogo.png",clr: Colors.blue,img2: "assets/wllogo2.png"),
      GridItem(title: "Rolex", img1: "assets/wllogo.png",clr: Colors.brown,img2: "assets/wllogo2.png"),
      GridItem(title: "Rolex", img1: "assets/wllogo.png",clr: Colors.red,img2: "assets/wllogo2.png"),
      GridItem(title: "Rolex", img1: "assets/wllogo.png",clr: Colors.pink,img2: "assets/wllogo2.png"),
      GridItem(title: "Rolex", img1: "assets/wllogo.png",clr: Colors.yellow,img2: "assets/wllogo2.png"),
      GridItem(title: "Rolex", img1: "assets/wllogo.png",clr: Colors.green,img2: "assets/wllogo2.png"),
      GridItem(title: "Rolex", img1: "assets/wllogo.png",clr: Colors.cyanAccent,img2: "assets/wllogo2.png"),
      GridItem(title: "Rolex", img1: "assets/wllogo.png",clr: Colors.blueGrey,img2: "assets/wllogo2.png"),
      GridItem(title: "Rolex", img1: "assets/wllogo.png",clr: Colors.grey,img2: "assets/wllogo2.png"),
      GridItem(title: "Rolex", img1: "assets/wllogo.png",clr: Colors.lime,img2: "assets/wllogo2.png"),
      GridItem(title: "Rolex", img1: "assets/wllogo.png",clr: Colors.orange,img2: "assets/wllogo2.png"),
    
        ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text("EXCLUSIVE FOR YOU",style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
          ),),
      ),
      ExclusiveSection(),
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text("DEAL ZONE",style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
          )),
      ),
DealZone(),
SizedBox(height: 20,),
Padding(
  padding: const EdgeInsets.only(top: 10,bottom: 10),
  child: Container(
    height: 60,
    width: double.infinity,
    decoration: BoxDecoration(
      gradient: LinearGradient(colors: [
        Colors.orangeAccent,
        Colors.pink,
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight
      ),
    ),
    child: Center(child: Text("#TOP TRENDING",style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white
          ))),
  ),
),
Container(
  height: 200,
  child: PLIST()),
    ],)));
  }
}