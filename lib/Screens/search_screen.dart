import 'package:flutter/material.dart';
import 'package:watch_luxora/Screens/search/popular_search.dart';
import 'package:watch_luxora/components/textfield.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Container(
                    height: 55,
                    width: 300,
                    child: CustomTextField(
                      hintText: "Search for items",
                      prefix: Icon(Icons.search),
                    ),
                  ),
                ),
                InkWell(child: Text("Cancel"),
                onTap: () {
                  Navigator.pop(context);
                },
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: popular_search(),
            ),
            
          ],
        ),
      ),
    );
  }
}