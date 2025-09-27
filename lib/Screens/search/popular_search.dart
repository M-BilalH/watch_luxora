import 'package:flutter/material.dart';

class popular_search extends StatelessWidget {
  const popular_search({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> psearch = ["MEN", "WOMEN", "GIRLS", "BOYS", "SPORTS"];
    final List<String> hotp = ["MEN", "WOMEN", "GIRLS", "BOYS", "SPORTS"];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Popular Searches",style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w600,
        ),),
        SizedBox(height: 10,),
        Wrap(
          spacing: 8.0, // Horizontal space between chips
          runSpacing: 8.0, // Vertical space between rows of chips
          children: <Widget>[
            Chip(label: Text('Rolex Oyster')),
            Chip(label: Text('Blue Dial')),
            Chip(label: Text('Gold Watches')),
            Chip(label: Text('Italian Style Watches')),
            Chip(label: Text('classic watches')),
            Chip(label: Text('Seiko 5')),
            Chip(label: Text('Omega Constellation')),
            Chip(label: Text('Tudor Black Bay')),
            Chip(label: Text('Tag Heuer Formula 1')),
            Chip(label: Text('Casio F-91W')),
          ],
        ),
        SizedBox(height: 10,),
        Text("Hot Products",style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w600,
        ),),
        SizedBox(height: 10,),
        Container(
          height: 150,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: hotp.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context,index){
return Padding(
  padding: const EdgeInsets.all(3.0),
  child: Container(
    width: 120,
    child: Column(
    children: [
      Image.asset("assets/l1.png"),
      Text("Rs:2000")
    ],
    ),
  ),
);
          }),
        )
        
      ],
    );
  }
}