import 'package:flutter/material.dart';
import 'package:flutter_nhom5_petshop/constants/image.dart';
import 'package:flutter_nhom5_petshop/screens/LoginScreen.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<StatefulWidget> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  static const primaryColor = Color(0xFFCB351E);

  void _navigateToLoginScreen(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => LoginScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(24),
        decoration: const BoxDecoration(
          color: Color(0xFFF9F9F9),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "My Profile",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w600,
                letterSpacing: -0.28,
                color: primaryColor,
              ),
            ),
            _profileWidget(),
            _itemProfile("My Orders", "Already have 12 orders"),
            _itemProfile("Shipping Address", "3 Address"),
            _itemProfile("Settings", "Notifications,  Password"),
            _logout(context),
          ],
        ),
      ),
    );
  }

  Widget _profileWidget() {
    return Container(
      margin: const EdgeInsets.only(top: 12, bottom: 18),
      padding: const EdgeInsets.all(8),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(100),
        ),
        color: Colors.white,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipOval(
            child: Image.asset(
              avatar,
              width: 55,
              height: 55,
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Nguyễn Cao Nam",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  letterSpacing: -0.28,
                  color: primaryColor,
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                "nguyencaohainam@gmail.com",
                style: TextStyle(
                  fontSize: 14,
                  letterSpacing: -0.28,
                  color: Colors.black,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _itemProfile(String title, String content) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 8,
      ),
      margin: const EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                content,
                style: const TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                ),
              )
            ],
          ),
          Image.asset(
            arrowRight,
            width: 20,
            height: 10,
          ),
        ],
      ),
    );
  }

  Widget _logout(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 10,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 8,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          InkWell(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Log Out",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: primaryColor,
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Image.asset(
                  imgLogout,
                  width: 17,
                  height: 16,
                )
              ],
            ),
            onTap: () {
              _navigateToLoginScreen(context);
            },
          )
        ],
      ),
    );
  }
}
