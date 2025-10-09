import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:watch_luxora/Screens/account/account_screen.dart';
import 'package:watch_luxora/Screens/category/category_screen.dart';
import 'package:watch_luxora/Screens/home/home_screen.dart';
import 'package:watch_luxora/Screens/home/product_screen.dart';
import 'package:watch_luxora/components/constants.dart';


class BottomPage extends StatefulWidget {
 

  const BottomPage({super.key,});

  @override
  State<BottomPage> createState() => _BottomPageState();
}

class _BottomPageState extends State<BottomPage> {
  int current_index=0;

      List<Widget> pages =[
    HomePage(),
    CategoryScreen(),
    Product_Screen(title: "New Arrival",img: "assets/arrival.png",),
    Container(),
  ];
  //     List<Widget> pagesparent =[
  //   HomeScreen(),
  //   AddContactPage(),
  //   PChatPage(),
  //   ProfilePage(),
  // ]
  
  //  onTapped(int index){
  //   setState(() {
  //     current_index=index;
  //   });
  // }
 void onTapped(int index) {
    if (index == 3) {
      // Show bottom sheet for Account
      showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        builder: (context) => Account_Sheet(),
      );
      setState(() {
        current_index = 0;
      });
    } else {
      setState(() {
        current_index = index;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[current_index],
      bottomNavigationBar:Container(
      height: 70,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
          child: GNav(
            rippleColor: hoverColor, // tab button ripple color when pressed
            hoverColor: primaryColor, // tab button hover color
            haptic: true, // haptic feedback
            tabBorderRadius: 15, 
            tabActiveBorder: Border.all(color: primaryColor, width: 1), // tab button border
            tabBorder: Border.all(color:secondaryColor, width: 1), // tab button border
            tabShadow: [BoxShadow(color: primaryColor.withOpacity(0.1), blurRadius: 8)], // tab button shadow
            curve: Curves.easeOutExpo, // tab animation curves
            duration: Duration(milliseconds: 300), // tab animation duration
            gap: 8, // the tab button gap between icon and text 
            color: secondaryColor, // unselected icon color
            activeColor: primaryColor, // selected icon and text color
            iconSize: 20, // tab button icon size
            tabBackgroundColor: primaryColor.withOpacity(0.1), // selected tab background color
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10), // navigation bar padding
            tabs: [
              GButton(
          icon: Icons.home,
          text: 'Home',
              ),
              GButton(
          icon: Icons.category,
          text: 'Categories',
              ),
              GButton(
          icon: Icons.fiber_new,
          text: 'New Arrival',
              ),
              GButton(
          icon: Icons.person,
          text: 'Account',
              )
            ],
            onTabChange: onTapped,
            selectedIndex: current_index,
          
          ),
        ),
      )
      // BottomNavigationBar(
        
      //   backgroundColor: Colors.white,
      //   selectedItemColor: primaryColor,
      //   elevation: 5,
      //   onTap: onTapped,
      //   currentIndex: current_index,
      //   type: BottomNavigationBarType.fixed,
      //   showSelectedLabels: true,
      //   selectedIconTheme: IconThemeData(size: 25),
      
      //   items: [
      //   BottomNavigationBarItem(
      //     label: 'Home',
      //     icon: Icon(Icons.home,)),
      //   BottomNavigationBarItem(label: 'Contacts',icon: Icon(Icons.contacts,)),
      //   BottomNavigationBarItem(label: 'Chat',icon: Icon(Icons.chat,)),
      //   BottomNavigationBarItem(label: 'Profile',icon: Icon(Icons.person,)),
      // ]),
    );
  }
}