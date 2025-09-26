import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:watch_luxora/Home_Component/deal_zone.dart';
import 'package:watch_luxora/Home_Component/exclusice.dart';
import 'package:watch_luxora/Home_Component/grid_home.dart';
import 'package:watch_luxora/products_list/Category_list.dart';
import 'package:watch_luxora/products_list/product_list.dart';
import 'package:watch_luxora/components/categories.dart';

class HomePage extends StatelessWidget {
   
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> bannerImages = [
    'assets/banner.png',
    'assets/banner.jpg',
    'assets/banner.jpeg',
    
  ];
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
                child: SizedBox(
                  height: 100,
                  width: double.infinity,
                  child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Categories(title: "New Arrival", url: "assets/arrival.png",color: Colors.black,),
                          Categories(title: "Rolex", url: "assets/rolex.png",color: Colors.black,),
                          Categories(title: "Cartier", url: "assets/cartier.png",color: Colors.black,),
                          Categories(title: "Corum", url: "assets/corum.png",color: const Color.fromARGB(255, 247, 202, 217),),
                          Categories(title: "Hublot", url: "assets/hublot.png",color: Colors.black,),
                          Categories(title: "Patek", url: "assets/patek.png",color: Colors.black,),
                       
                        ],
                      ),
                ),),
                CarouselSlider(
      options: CarouselOptions(
        height: 250,
        viewportFraction: 1.0, // Full width
        autoPlay: true,        // Auto scroll
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
      ),
      items: bannerImages.map((imagePath) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: double.infinity,
              color: Colors.black,
              child: Image.asset(
                imagePath,
                fit: BoxFit.fill,
              ),
            );
          },
        );
      }).toList(),
    ),
                // Container(
                //   color: Colors.black,
                //   height: 300,
                //   width: double.infinity,
                //   child: Image.asset('assets/banner.png',fit: BoxFit.fill,),
                // ),
              Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text("TOP CATEGORY",style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
        ),),
              ),
              SizedBox(
        height: 680,
        child: GridView(
          gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, // Number of columns
            crossAxisSpacing: 10.0,
            childAspectRatio: 0.8,
            mainAxisSpacing: 8.0,
          ),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
        children: [
      GridItem(title: "Quartz", img1: "assets/category/q1.png",clr: Colors.black,img2: "assets/category/q2.png"),
      GridItem(title: "Automatic", img1: "assets/category/a1.png",clr: const Color.fromARGB(255, 13, 70, 117),img2: "assets/category/a2.png"),
      GridItem(title: "Dress", img1: "assets/category/d1.png",clr: Colors.brown,img2: "assets/category/d2.png"),
      GridItem(title: "Pilot", img1: "assets/category/p1.png",clr: const Color.fromARGB(255, 33, 93, 16),img2: "assets/category/p2.png"),
      GridItem(title: "Analog", img1: "assets/category/an1.png",clr: Colors.pink,img2: "assets/category/an2.png"),
      GridItem(title: "Digital", img1: "assets/category/di1.png",clr: Colors.yellow,img2: "assets/category/di2.png"),
      GridItem(title: "Dive", img1: "assets/category/q1.png",clr: Colors.green,img2: "assets/category/a2.png"),
      GridItem(title: "Sports", img1: "assets/category/q1.png",clr: Colors.cyanAccent,img2: "assets/category/a2.png"),
      GridItem(title: "Skeleton", img1: "assets/category/q1.png",clr: Colors.blueGrey,img2: "assets/category/a2.png"),
      GridItem(title: "Smart", img1: "assets/category/q1.png",clr: Colors.grey,img2: "assets/category/a2.png"),
      GridItem(title: "Luxury", img1: "assets/category/q1.png",clr: Colors.lime,img2: "assets/category/a2.png"),
      GridItem(title: "Field", img1: "assets/category/q1.png",clr: Colors.orange,img2: "assets/category/a2.png"),
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
CTGLIST(),
SizedBox(
  height: MediaQuery.of(context).size.height*2.1,
  child: PLIST()),
    ],)));
  }
}