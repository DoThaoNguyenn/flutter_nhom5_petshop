import 'package:flutter/material.dart';
import 'package:flutter_nhom5_petshop/screens/Order.dart';

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
                    color: Colors.grey[500],
                  ),
                ),
                const SizedBox(
                height: 10,
              ),
                Text(
                  'Status:',
                  style: TextStyle(
                    color: Colors.grey[500],
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
                  ),
                ),
              ],
            ),
            ),
          
        ],
      ),
    );
  Widget OrderItem = Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        margin: const EdgeInsets.only(bottom: 10),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          
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
              padding: const EdgeInsets.all(15),
              child: titleSection,
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: OrderItem,
            ),
          ],
        ),
      );
    
  }

}