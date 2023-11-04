import 'package:flutter/material.dart';

import 'ForgotPasswordScreen.dart';
import 'RegisterScreen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  String _errorText = ''; // Thêm biến để lưu thông báo lỗi

  void _login() {
    String username = _usernameController.text;
    String password = _passwordController.text;

    if (username.isEmpty || password.isEmpty) {
      setState(() {
        _errorText = 'Vui lòng điền tên người dùng và mật khẩu.';
      });
    } else {
      // Xử lý đăng nhập ở đây
      setState(() {
        _errorText = ''; // Đặt lại thông báo lỗi nếu không có lỗi
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome!',
              style: TextStyle(
                fontSize: 70,
                color: Colors.blue,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: TextField(
                controller: _usernameController,
                decoration: const InputDecoration(
                  labelText: 'Tên người dùng',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: TextField(
                controller: _passwordController,
                decoration: const InputDecoration(
                  labelText: 'Mật khẩu',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
            ),
            Text(
              _errorText,
              style: const TextStyle(color: Colors.red),
            ),
            ElevatedButton(
              onPressed: _login,
              child: const Text('Đăng nhập'),
            ),
            TextButton(
              onPressed: () {
                // Xử lý điều hướng đến trang đăng ký
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterScreen()), // Thay thế bằng trang đăng ký thực tế
                );
              },
              child: const Text('Đăng ký'),
            ),
            TextButton(
              onPressed: () {
                // Xử lý điều hướng đến trang quên mật khẩu
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ForgotPasswordScreen()),
                );
              },
              child: const Text('Quên mật khẩu'),
            ),
          ],
        ),
      ),
    );
  }
}
