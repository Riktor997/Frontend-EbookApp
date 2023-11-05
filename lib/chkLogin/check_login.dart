import 'package:flutter/material.dart';
import 'package:ebookapp/user/user.dart';

class check_login extends StatefulWidget {
  const check_login({Key? key}) : super(key: key);

  @override
  State<check_login> createState() => _check_loginState();
}

class _check_loginState extends State<check_login> {
  Future checklogin() async {
    bool? signin = await user.getsigin();
    print(signin);

    if (signin == true) {
      Navigator.pushNamed(context, 'login');
    } else {
      Navigator.pushNamed(context, 'homepage');
    }
  }

  void initState() {
    checklogin();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}