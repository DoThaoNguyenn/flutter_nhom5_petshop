import 'package:flutter/material.dart';
import '../model/product.dart';
import '../constants/image.dart';

class HomePageProduct extends StatelessWidget {
  final List<Product> products = [
    Product(
      imageUrl: img1,
      name: 'Healthy PET Food',
      originalPrice: 100000,
      discountedPrice: 80000,
    ),
    Product(
      imageUrl: img2,
      name: 'Bart Bites',
      originalPrice: 120000,
      discountedPrice: 100000,
    ),
    Product(
      imageUrl: img3,
      name: 'Healthy PET Food',
      originalPrice: 100000,
      discountedPrice: 80000,
    ),
    Product(
      imageUrl: img3,
      name: 'Bart Bites',
      originalPrice: 100000,
      discountedPrice: 80000,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10, top:10),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Featured Product',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),

        // Padding(
        //   padding: const EdgeInsets.all(5.0),
        // ),
        Container(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: products.length, // Number of products in the slide
            itemBuilder: (context, index) {
              // context state
              Product product = products[index];
              // Build a product in the slide
              return Container(
                // padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 3),
                margin: const EdgeInsets.all(5),
                width: 150,
                child: Card(
                  
                  child: Column(
                    
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      
                      // Image.network(product.imageUrl),
                      Image.asset(
                  product.imageUrl,
                  height: 70,
                  width: 70,
                ),
                      Text(product.name),

                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          Icon(Icons.star, color: Colors.yellow),
                          Icon(Icons.star, color: Colors.yellow),
                          Icon(Icons.star, color: Colors.yellow),
                          Icon(Icons.star, color: Colors.yellow),
                        ],
                      ),
                      Row(
                        children: [
                          // Price
                          Text(
                            '${product.originalPrice}',
                            style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(width: 15),
                          // DiscountPrice
                          Text(
                            '${product.discountedPrice}',
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),

                      // Buy Now button
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              // Handle Buy Now button click event
                            },
                            child: Text('Buy Now'),
                          ),
                          // SizedBox(width: 10),
                          IconButton(
                            iconSize: 25,
                            icon: Icon(Icons.shopping_cart),
                            // tooltip: 'Cart', //hiển thị ghi chú
                            onPressed: () {
                              success(context);
                            },
                          ),
                        ],
                      ),

                      // Rating and stars
                    ],
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

void success(BuildContext context) {
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
