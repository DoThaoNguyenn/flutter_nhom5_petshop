import 'package:flutter/material.dart';
import 'package:flutter_nhom5_petshop/screens/Cart.dart';
import 'package:flutter_nhom5_petshop/screens/my_profile.dart';
import 'package:flutter_nhom5_petshop/screens/OrderDetail.dart';

class MyOrderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
              builder: (context) => MyProfile(),
            ),
      );
          },
        ),
        title: Text('MyOrder'),
      ),
      backgroundColor: Color.fromARGB(255, 244, 242, 242),
      
      
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Xử lý chức năng điều hướng khi nhấn vào Delivered
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 245, 74, 59),
                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                          minimumSize: Size(100, 0),
                          ),
                  child: Text(
                    'Delivered',
                    style: TextStyle(
                      
                      fontSize: 18,
                    ),
                  
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Xử lý chức năng điều hướng khi nhấn vào Processing
                  },
                  style: ElevatedButton.styleFrom(
                      // shadowColor: const Color.fromRGBO(0, 0, 0, 0.25),
                      side: BorderSide(
                        color: Colors.black, // Màu sắc của viền
                        width: 1.0, // Độ dày của viền
                      ),
     
                      backgroundColor: Colors.grey[100],
                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                          minimumSize: Size(100, 0),
                          ),
                  child: Text(
                    'Processing',
                    style: TextStyle(
                      color:Colors.black,
                      fontSize: 18,
                    ),
                ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Xử lý chức năng điều hướng khi nhấn vào Cancel
                  },
                  style: ElevatedButton.styleFrom(
                      
                      side: BorderSide(
                        color: Colors.black, // Màu sắc của viền
                        width: 1.0, // Độ dày của viền
                      ),
     
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                          minimumSize: Size(100, 0),
                          ),
                  child: Text(
                    'Cancel',
                    style: TextStyle(
                      color:Colors.black,
                      fontSize: 18,
                    ),),
                ),
              ],
            ),
          ),
          const SizedBox(
                width: 20,
              ),
          Expanded(
            
            child: ListView.builder(
              itemCount: 4, // Số lượng đơn đặt hàng
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  // padding: EdgeInsets.only(bottom: 10), // Khoảng cách giữa các đơn đặt hàng
                
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 12,
                    ),
                    margin: const EdgeInsets.only(bottom: 15),
                    decoration: BoxDecoration(
                      // border: Border.all(color: Colors.grey), // Viền
                      borderRadius: BorderRadius.all(Radius.circular(15),), // Bo viền
                      color: Colors.white // Màu nền
                    ),
                  
                  child: ListTile(
                    title: Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Text('Order #1000${index + 1}'),
                    ),
                    
                    
                    subtitle: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Status:'),
                            Text('Amount:'),
                            Text('Total:'),
                          ],
                        ),
                        SizedBox(width: 200), // Khoảng cách giữa hai cột
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Delivered',                          
                              style: TextStyle(
                                color: Colors.blue,
                              )
                            ),
                            Text('${index + 5}'),
                            Text('${index*20000 + 100000}'),
                          ],
                        ),
                      ],
                    ),
                  
                  // Xử lý chức năng điều hướng khi nhấn vào đơn đặt hàng
                  onTap: () {
                    
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OrderDetail(),
                      ),
                    );
                  },
                ),
                ),
                );
              },
            ),
          ),
          
        ],
      ),
    );
  }
}