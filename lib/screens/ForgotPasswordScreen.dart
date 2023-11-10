import 'package:flutter/material.dart';

import 'LoginScreen.dart';

class ForgotPasswordScreen extends StatefulWidget {
  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final TextEditingController _emailController = TextEditingController();
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
        title: const Text('Forgot Password'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Quên mật khẩu',
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.red,
                ),
              ),
              Container(
                margin: const EdgeInsets.all(20),
                child: TextField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                    labelText: 'Địa chỉ email hoặc thông tin liên hệ',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Text(
                _errorText,
                style: const TextStyle(color: Colors.red),
              ),
              ElevatedButton(
                onPressed: _resetPassword,
                child: const Text('Đặt lại mật khẩu'),
              ),
              TextButton(
                onPressed: () {
                  // Xử lý điều hướng về trang đăng nhập
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
                child: const Text('Đăng nhập'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
