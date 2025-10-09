import 'package:flutter/material.dart';

class CTGLIST extends StatefulWidget {
  const CTGLIST({super.key});

  @override
  State<CTGLIST> createState() => _CTGLISTState();
}

class _CTGLISTState extends State<CTGLIST> {
  @override
  Widget build(BuildContext context) {
    final List<String> categories = ["MEN", "WOMEN", "GIRLS", "BOYS", "SPORTS"];
    final List<String> categories2 = ["All","Trending", "Latest", "Ultra Rich", "Vintage", "Day-Date",];
  int selectedIndex = 0;
  bool isSelected;
    return Column(
      children: [
        SizedBox(
          
          height: 50,
          width: double.infinity,
          child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
        if(index==selectedIndex){
isSelected= true;
        }
        else{
          isSelected= false;
        }
          return InkWell(
            onTap: () {
              setState(() {
                selectedIndex = index;
               
              });
              debugPrint("Selected index: $selectedIndex");
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    child: Text(
                      categories[index],
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        
                        color: isSelected ? Colors.black : Colors.grey,
                      ),
                    ),
                    
                  ),
                  if (isSelected)
                    Container(
                      margin: EdgeInsets.only(top: 4),
                      height: 3,
                      width: 60,
                      color: Colors.black,
                    ),
                ],
              ),
              
            ),
          );
        },
        
      ),
        ),
        
        SizedBox(height: 5,),
           SizedBox(
          
          height: 50,
          width: double.infinity,
          child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
        if(index==selectedIndex){
isSelected= true;
        }
        else{
          isSelected= false;
        }
          return InkWell(
            onTap: () {
              setState(() {
                selectedIndex = index;
               
              });
              debugPrint("Selected index: $selectedIndex");
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
              child: Container(
                width: 100,
                height: 80,
                
                decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: Colors.black,
               
              )
                ),
                child: InkWell(
                  child: Center(
                    child: Text(
                      categories2[index],
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        
                        color: isSelected ? Colors.black : Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
              
            ),
          );
        },
        
      ),
        ),
        
      ],
    );
  }
}