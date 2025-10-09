import 'package:flutter/material.dart';
import 'package:watch_luxora/products_list/products.dart';

class PLIST extends StatefulWidget {
  const PLIST({super.key});

  @override
  State<PLIST> createState() => _PLISTState();
}

class _PLISTState extends State<PLIST> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  
      body: SizedBox(
        height: double.infinity,
        child: GridView.builder(gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, // Number of columns
            crossAxisSpacing: 10.0,
            childAspectRatio: 0.79,
            mainAxisSpacing: 8.0,
          ),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index){
             return GridItem2(title: "Rolex Watch R01",price: "Rs:2000",img: "assets/l1.png",);
          },
      
        ),
      ),
    );
  
  }
}