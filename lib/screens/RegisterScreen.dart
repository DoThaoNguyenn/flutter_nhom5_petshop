import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();
  String _errorText = '';

  void _register() {
    String username = _usernameController.text;
    String password = _passwordController.text;
    String confirmPassword = _confirmPasswordController.text;

    if (username.isEmpty || password.isEmpty || confirmPassword.isEmpty) {
      setState(() {
        _errorText = 'Vui lòng điền đầy đủ thông tin.';
      });
    } else if (password != confirmPassword) {
      setState(() {
        _errorText = 'Mật khẩu và xác nhận mật khẩu không khớp.';
      });
    } else {
      // Xử lý đăng ký ở đây
      // Thông thường, bạn sẽ kiểm tra thông tin đăng ký có hợp lệ không
      // và sau đó điều hướng đến trang đăng nhập hoặc trang chính nếu đăng ký thành công
      setState(() {
        _errorText = '';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
        centerTitle: true,
        backgroundColor: Colors.blue, // Chỉnh màu nền tiêu đề
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(20),
              child: TextField(
                controller: _usernameController,
                decoration: InputDecoration(
                  labelText: 'Tên người dùng',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: TextField(
                controller: _passwordController,
                decoration: InputDecoration(
                  labelText: 'Mật khẩu',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: TextField(
                controller: _confirmPasswordController,
                decoration: InputDecoration(
                  labelText: 'Xác nhận mật khẩu',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
            ),
            Text(
              _errorText,
              style: TextStyle(color: Colors.red),
            ),
            ElevatedButton(
              onPressed: _register,
              child: Text('Đăng ký'),
            ),
            TextButton(
              onPressed: () {
                // Xử lý điều hướng đến trang đăng nhập
              },
              child: Text('Đăng nhập'),
            ),
          ],
        ),
      ),
    );
  }
}
