import 'package:flutter/material.dart';
import 'package:flutter_nhom5_petshop/screens/Order.dart';
import '../constants/image.dart';
import 'package:flutter_nhom5_petshop/screens/cart.dart';

class OrderDetail extends StatelessWidget {
  const OrderDetail({super.key});

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 12,
                    ),
      decoration: BoxDecoration(
                      // border: Border.all(color: Colors.grey), // Viền
                      borderRadius: BorderRadius.all(Radius.circular(15),), // Bo viền
                      color: Colors.white // Màu nền
                    ),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Order #1000',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                height: 15,
              ),
                Text(
                  'Tracking number:',
                  style: TextStyle(
                    color: Colors.grey[800],
                  ),
                ),
                const SizedBox(
                height: 10,
              ),
                Text(
                  'Status:',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[800],
                  ),
                ),
              ],
            ),
          ),
          //Khoảng cách 2 cột:
          const SizedBox(
                width: 100,
              ),
          Expanded(
            child: Column(
              // Nội dung của cột thứ hai
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    '10/10/2023',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[500],
                  ),
                  ),
                ),
                const SizedBox(
                height: 15,
              ),
                Text(
                  'IW174548798',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                height: 10,
              ),
                Text(
                  'Processing',
                  style: TextStyle(
                    color: Colors.green[800],
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            ),
          
        ],
      ),
    );

@override
Widget itemOrder() {
    return Container(
      margin: const EdgeInsets.only(top: 8, bottom: 8),
      padding: const EdgeInsets.all(8),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
        color: Colors.white,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipOval(
            child: Image.asset(
              img1,
              width: 120,
              height: 126,
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Heathy Pet Food",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  letterSpacing: -0.28,
                  color: Colors.black87,
                ),
              ),
              SizedBox(
                height: 7,
              ),
              Row(
                children: [
                  Text(
                    "80.000",
                    style: TextStyle(
                      decoration: TextDecoration.lineThrough,
                                  fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "80.000",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(Icons.star, color: Colors.yellow),
                  Icon(Icons.star, color: Colors.yellow),
                  Icon(Icons.star, color: Colors.yellow),
                  Icon(Icons.star, color: Colors.yellow),
                  Icon(Icons.star, color: Colors.yellow),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Quantity:  01",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

@override
Widget Button = SizedBox(
      width: double.infinity,
      child: ElevatedButton(
      onPressed: () {
        Navigator.push(
        context,
        MaterialPageRoute(
        builder: (context) => MyOrderPage(),
          ),
        );
      },
        style: ElevatedButton.styleFrom(
            shadowColor: const Color.fromRGBO(0, 0, 0, 0.25),
            elevation: 4,
            backgroundColor: const Color(0xFFDB3022),
            padding: const EdgeInsets.symmetric(vertical: 15),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30))),
        child: const Text(
          'Received The Order',
          style: TextStyle(
              fontSize: 16,
              color: Colors.white,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w600),
        ),
      ),
    );

@override
Widget OrderInformation =  Container(
      padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 12,
                    ),
      decoration: BoxDecoration(
                      // border: Border.all(color: Colors.grey), // Viền
                      borderRadius: BorderRadius.all(Radius.circular(15),), // Bo viền
                      color: Colors.white // Màu nền
                    ),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Order',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                height: 5,
              ),
                Text(
                  'Delivery',
                  style: TextStyle(
                    fontSize: 18,
                      fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                height: 10,
              ),
                Text(
                  'Summary',
                  style: TextStyle(
                    fontSize: 18,
                      fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          //Khoảng cách 2 cột:
          const SizedBox(
                width: 100,
              ),
          Expanded(
            child: Column(
              // Nội dung của cột thứ hai
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    'đ160.000',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                  ),
                  ),
                ),
                const SizedBox(
                height: 5,
              ),
                Text(
                  'đ15.000',
                  style: TextStyle(
                    fontSize: 18,
                      fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                height: 10,
              ),
                Text(
                  'đ175.000',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
            ),
          
        ],
      ),
    );



  return Scaffold(
    appBar: AppBar(
          
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                  builder: (context) => MyOrderPage(),
                ),
          );
              },
            ),
            title: Text('Order Detail'),
            
          ),
          
          backgroundColor: Color.fromARGB(255, 244, 242, 242),

    
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: titleSection,
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Text(
                '  Order Information:',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,),
                ),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: itemOrder(),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: itemOrder(),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: OrderInformation,
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              margin: const EdgeInsets.only(top: 10),
              child: Button,
            ),
            
          ],
        ),
      );
    
  }

}