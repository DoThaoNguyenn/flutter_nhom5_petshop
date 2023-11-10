import 'package:flutter/material.dart';

class EditAddAddressPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Xử lý sự kiện khi nút "Back" được nhấn
          },
        ),
        title: Text(
          'Edit Address',
          style: TextStyle(color: Colors.red),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Recipient Name',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey, // Màu của border
                    width: 1.0, // Độ dày của border
                  ),
                  borderRadius: BorderRadius.circular(8.0), // Bo góc của border
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border:
                        InputBorder.none, // Ẩn border mặc định của TextField
                    contentPadding: EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical:
                            12.0), // Khoảng cách giữa border và nội dung TextField
                  ),
                ),
              ),
              Text(
                'Phone Number',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey, // Màu của border
                    width: 1.0, // Độ dày của border
                  ),
                  borderRadius: BorderRadius.circular(8.0), // Bo góc của border
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border:
                        InputBorder.none, // Ẩn border mặc định của TextField
                    contentPadding: EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical:
                            12.0), // Khoảng cách giữa border và nội dung TextField
                  ),
                ),
              ),
              Text(
                'Address',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey, // Màu của border
                    width: 1.0, // Độ dày của border
                  ),
                  borderRadius: BorderRadius.circular(8.0), // Bo góc của border
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border:
                        InputBorder.none, // Ẩn border mặc định của TextField
                    contentPadding: EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical:
                            12.0), // Khoảng cách giữa border và nội dung TextField
                  ),
                ),
              ),
              Text(
                'City',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey, // Màu của border
                    width: 1.0, // Độ dày của border
                  ),
                  borderRadius: BorderRadius.circular(8.0), // Bo góc của border
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border:
                        InputBorder.none, // Ẩn border mặc định của TextField
                    contentPadding: EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical:
                            12.0), // Khoảng cách giữa border và nội dung TextField
                  ),
                ),
              ),
              Text(
                'State/Provinece/Region',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey, // Màu của border
                    width: 1.0, // Độ dày của border
                  ),
                  borderRadius: BorderRadius.circular(8.0), // Bo góc của border
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border:
                        InputBorder.none, // Ẩn border mặc định của TextField
                    contentPadding: EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical:
                            12.0), // Khoảng cách giữa border và nội dung TextField
                  ),
                ),
              ),
              Text(
                'Zip Code',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey, // Màu của border
                    width: 1.0, // Độ dày của border
                  ),
                  borderRadius: BorderRadius.circular(8.0), // Bo góc của border
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border:
                        InputBorder.none, // Ẩn border mặc định của TextField
                    contentPadding: EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical:
                            12.0), // Khoảng cách giữa border và nội dung TextField
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Row(
                children: [
                  Checkbox(
                    value: false,
                    onChanged: (value) {
                      // Xử lý sự kiện thay đổi giá trị checkbox
                    },
                  ),
                  Text('Use as'),
                ],
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.red, // Đặt màu nền đỏ cho button
                ),
                onPressed: () {
                  // Xử lý sự kiện khi nút "Save Address" được nhấn
                  addToCart(context);
                },
                child: Text('Save Address'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: EditAddAddressPage(),
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
