import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../constants/image.dart';
import '../model/item_cart_model.dart';

class ProductDetailPage extends StatefulWidget {
  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  List<bool> starStates = [
    false,
    false,
    false,
    false,
    false,
  ]; // Initial state of stars
  bool isFavorite = false; // Initial state of favorite button
  int quantity = 1; // Initial quantity

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.red,
          ),
          onPressed: () {
            // Handle back button press
            Navigator.pop(context); // Quay trở lại trang trước đó
          },
        ),
        title: Text(
          'Product Name',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.red,
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          SizedBox(height: 16),
          Image.asset(
            img2,
            height: 200,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: List.generate(
                  5,
                  (index) => IconButton(
                    icon: Icon(
                      Icons.star,
                      color: starStates[index]
                          ? Colors.orange
                          : Colors.grey, // Star color based on state
                    ),
                    onPressed: () {
                      setState(() {
                        // Update star states when a star is pressed
                        for (int i = 0; i <= index; i++) {
                          starStates[i] = true;
                        }
                        for (int i = index + 1; i < starStates.length; i++) {
                          starStates[i] = false;
                        }
                      });
                    },
                  ),
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.favorite,
                  color: isFavorite
                      ? Colors.red
                      : Colors.black, // Change favorite button color based on state
                ),
                onPressed: () {
                  setState(() {
                  // Update favorite button state
                    isFavorite = !isFavorite;
                  });
                },
              ),
            ],
          ),
          SizedBox(height: 16),
          Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Text(
      'Product Name',
      style: TextStyle(
        fontSize: 20,
      ),
    ),
    SizedBox(width: 8),
    RichText(
      textAlign: TextAlign.right,
      text: TextSpan(children: [
        TextSpan(
          text: '100.000',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Montserrat',
            fontSize: 16,
            decoration: TextDecoration.lineThrough,
          ),
        ),
        TextSpan(text: '  '),
        TextSpan(
          text: '80.000',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Montserrat',
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ]),
    ),
  ],
),
          SizedBox(height: 16),
          Text(
            'Product details',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          SizedBox(height: 16),
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red, // Set button background color
                    onPrimary: Colors.white, // Set button text color
                    padding: EdgeInsets.symmetric(
                        vertical: 12, horizontal: 64), // Set button padding
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(25), // Set button border radius
                    ),
                  ),
                  onPressed: () {
                    addToCart(
                        context); // Gọi hàm addToCart() khi nút được nhấp vào
                  },
                  child: Text('Add to Cart'),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      // Decrease quantity when decrease button is pressed
                      if (quantity > 1) {
                        quantity--;
                      }
                    });
                  },
                  child: Icon(Icons.remove),
                ),
                Text(
                  quantity.toString(), // Display the quantity value
                  style: TextStyle(fontSize: 16),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      // Increase quantity when increase button is pressed
                      quantity++;
                    });
                  },
                  child: Icon(Icons.add),
                ),
                SizedBox(width: 16),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ProductDetailPage(),
  ));
}

void addToCart(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext dialogContext) {
      return AlertDialog(
        content: Column(
          mainAxisSize:
              MainAxisSize.min, // Đảm bảo cột chỉ chiếm không gian cần thiết
          children: [
            Icon(
              Icons.check_circle,
              color: Colors.green,
              size: 48,
            ),
            SizedBox(height: 8),
            Text(
              'Successful',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      );
    },
  );
}