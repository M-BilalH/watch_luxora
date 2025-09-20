import 'package:flutter/material.dart';

class ExclusiveSection extends StatelessWidget {
  const ExclusiveSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Top Banner
          Container(
            height: 150,
            color: Colors.purpleAccent,
            alignment: Alignment.center,
            child: Stack(
              children: [
                Image.asset("assets/e1.png",fit: BoxFit.contain,),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "FRESH DESIGNS",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                        ),
                      ),
                     
                      Text(
                        "Everyday",
                        style: TextStyle(
                          fontSize: 18,
                          fontStyle: FontStyle.italic,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
SizedBox(height: 10,),
          // Kids Section
          Container(
            height: 120,
            color: Colors.pinkAccent,
            alignment: Alignment.center,
            child: Stack(
              alignment: Alignment.center,
              children: [
                 Center(child: Image.asset("assets/e2.png",height: 120,)),
                 Padding(
                   padding: const EdgeInsets.only(top: 30),
                   child: Text(
                    "KIDS",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                    ),
                                   ),
                 ),
              ],
            ),
          ),
SizedBox(height: 10,),
          // Men & Women (side by side)
          Row(
            children: [
              Expanded(
                child: Container(
            height: 150,
            color: Colors.lightBlueAccent,
            alignment: Alignment.center,
            child: Stack(
              alignment: Alignment.center,
              children: [
                 Center(child: Image.asset("assets/e3.png",height: 150,)),
                 Padding(
                   padding: const EdgeInsets.only(top: 30),
                   child: Text(
                    "MEN",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                    ),
                                   ),
                 ),
              ],
            ),
          ),
              ),
              SizedBox(width: 10,),
              Expanded(
                child: Container(
            height: 150,
            color: Colors.amberAccent,
            alignment: Alignment.center,
            child: Stack(
              alignment: Alignment.center,
              children: [
                 Center(child: Image.asset("assets/e4.png",height: 150,)),
                 Padding(
                   padding: const EdgeInsets.only(top: 30),
                   child: Text(
                    "WOMEN",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                    ),
                                   ),
                 ),
              ],
            ),
          ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
