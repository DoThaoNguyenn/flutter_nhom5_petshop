import 'package:flutter/material.dart';
import '../model/product.dart';
import '../constants/image.dart';

class HomePageCategory extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePageCategory> {
  String selectedCategory = 'All';
  final List<Product> catProducts = [
    Product(
      imageUrl: img1,
      name: 'Cat Food 1',
      originalPrice: 50000,
      discountedPrice: 45000,
    ),
    Product(
      imageUrl: img2,
      name: 'Cat Food 2',
      originalPrice: 60000,
      discountedPrice: 55000,
    ),
  ];
  final List<Product> dogProducts = [
    Product(
      imageUrl: img3,
      name: 'Dog Food 1',
      originalPrice: 70000,
      discountedPrice: 65000,
    ),
    Product(
      imageUrl: img4,
      name: 'Dog Food 2',
      originalPrice: 80000,
      discountedPrice: 75000,
    ),
  ];
  final List<Product> otherProducts = [
    Product(
      imageUrl: img1,
      name: 'Other Product 1',
      originalPrice: 90000,
      discountedPrice: 85000,
    ),
  ];
  List<Product> getSelectedProducts() {
    switch (selectedCategory) {
      case 'Cat':
        return catProducts;
      case 'Dog':
        return dogProducts;
      case 'Other':
        return otherProducts;
      default:
        // Show all products if no specific category is selected
        return List.from([...catProducts, ...dogProducts, ...otherProducts]);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10, top:10),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Category',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                // Handle Cat button click event
                setState(() {
                  selectedCategory = 'Cat';
                });
              },
              child: Text('Cat'),
            ),
            ElevatedButton(
              onPressed: () {
                // Handle Dog button click event
                setState(() {
                  selectedCategory = 'Dog';
                });
              },
              child: Text('Dog'),
            ),
            ElevatedButton(
              onPressed: () {
                // Handle Other button click event
                setState(() {
                  selectedCategory = 'Other';
                });
              },
              child: Text('Other'),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: getSelectedProducts().length,
            itemBuilder: (context, index) {
              Product product = getSelectedProducts()[index];

              return Container(
                margin: const EdgeInsets.all(5),
                width: 150,
                child: Card(
                  
                  // margin: const EdgeInsets.all(5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      
                      // Image.network(product.imageUrl),
                      Image.asset(
                        product.imageUrl,
                        height: 70,
                        width: 70,),
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
                          Text(
                            '${product.originalPrice}',
                            style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(width: 15),
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
