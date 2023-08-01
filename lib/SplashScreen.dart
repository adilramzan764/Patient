
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'Page1.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigateToNextPage();
  }

  void navigateToNextPage() {
    Future.delayed(Duration(seconds:3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Page1()), // Replace 'NextPage' with your actual next page widget
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Image.asset(
          'assets/logo1.png',
          width: 290, // Specify width
          height: 210, // Specify height
        ),
      ),

    );
  }
}
