import 'package:flutter/material.dart';

import 'LoginScreen.dart';

class ForgotPasswordScreen extends StatefulWidget {
  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  TextEditingController _emailController = TextEditingController();
  String _errorText = '';

  void _resetPassword() {
    String email = _emailController.text;

    if (email.isEmpty) {
      setState(() {
        _errorText = 'Vui lòng nhập địa chỉ email hoặc thông tin liên hệ.';
      });
    } else {
      // Xử lý đặt lại mật khẩu ở đây
      // Thông thường, bạn sẽ gửi yêu cầu đặt lại mật khẩu đến email hoặc thông tin liên hệ đã cung cấp
      setState(() {
        _errorText = '';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forgot Password'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(20),
              child: TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'Địa chỉ email hoặc thông tin liên hệ',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Text(
              _errorText,
              style: TextStyle(color: Colors.red),
            ),
            ElevatedButton(
              onPressed: _resetPassword,
              child: Text('Đặt lại mật khẩu'),
            ),
            TextButton(
              onPressed: () {
                // Xử lý điều hướng về trang đăng nhập
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              child: Text('Đăng nhập'),
            ),
          ],
        ),
      ),
    );
  }
}
