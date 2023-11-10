import 'package:flutter/material.dart';
import '../Screens/Category.dart';
import '../Screens/Product.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Center(child: Text('Home')),
      //   actions: [
      //     IconButton(
      //       icon: Icon(Icons.search),
      //       onPressed: () {
      //         // Handle search button click event
      //       },
      //     ),
      //   ],
      // ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius:
                      BorderRadius.circular(15.0), // Remove border radiusS
                ),
              ),
              onChanged: (value) {
                // Handle search text field value change event
              },
            ),
          ),
          HomePageProduct(),
          HomePageCategory()
        ],
      ),
    );
  }
}
