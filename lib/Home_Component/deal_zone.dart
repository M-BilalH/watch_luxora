import 'package:flutter/material.dart';

class DealZone extends StatelessWidget {
  const DealZone({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 150,
              width: 150,
             
              decoration: BoxDecoration(
 color: const Color.fromARGB(255, 197, 153, 137),
 borderRadius: BorderRadius.circular(100)
              ),
              child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "MIN.",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 4),
              Text(
                "  60%",
                style: TextStyle(
                  height: 0.5,
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 4),
              Text(
                "OFF",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                ),
              ),
            ],
          ),
            ),
            
            Container(
              height: 150,
              width: 150,
             
              decoration: BoxDecoration(
 color: const Color.fromARGB(255, 197, 153, 137),
 borderRadius: BorderRadius.circular(100)
              ),
              child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             
             
              Text(
                "HALF",
                style: TextStyle(
                  height: 0.5,
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                ),
              ),
            
              Text(
                "PRICE",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                ),
              ),
              
               Text(
                "STORE",
                style: TextStyle(
                  height: 0.5,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ],
          ),
            ),
            
          ],
        ),
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 150,
              width: 150,
             
              decoration: BoxDecoration(
 color: const Color.fromARGB(255, 197, 153, 137),
 borderRadius: BorderRadius.circular(100)
              ),
              child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "UNDER",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
             
              Text(
                "Rs.999",
                style: TextStyle(
                  height: 0.8,
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                ),
              ),
              
            ],
          ),
            ),
            Container(
              height: 150,
              width: 150,
             
              decoration: BoxDecoration(
 color: const Color.fromARGB(255, 197, 153, 137),
 borderRadius: BorderRadius.circular(100)
              ),
              child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "MIN.",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
             
              Text(
                "Rs.2999",
                style: TextStyle(
                  height: 0.8,
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                ),
              ),
              
            ],
          ),
            ),
            
       
          ],
        ),
      ],
    );
  }
}