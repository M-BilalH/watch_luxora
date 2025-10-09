import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:watch_luxora/Screens/cart/cart_screen.dart';

class Single_Product_Screen extends StatefulWidget {
  late String title;
   late String price;
   late String img;

   Single_Product_Screen({super.key,required this.img,required this.price,required this.title});

  @override
  State<Single_Product_Screen> createState() => _Single_Product_ScreenState();
}

class _Single_Product_ScreenState extends State<Single_Product_Screen> {
  @override
  Widget build(BuildContext context) {
    final List<String> bannerImages = [
    widget.img,
    widget.img,
    widget.img,
  ];
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.share)),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart_Screen()));
              },
              child: Icon(Icons.shopping_cart)),
          ),
        ],
      ),
      body: Column(
        children: [
          CarouselSlider(
      options: CarouselOptions(
        height: 450,
        viewportFraction: 1.0, // Full width
        autoPlay: false,        // Auto scroll
       
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
          //   height: 450,
          //   width: MediaQuery.of(context).size.width,
            
          //   decoration: BoxDecoration(
          //     image: DecorationImage(image: AssetImage(widget.img)),
          //   ),
          // )
        ],
      ),
    );
  }
}