
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'Login_Started_Screen.dart';

class Page4 extends StatefulWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 200,
              ),
              Align(
                alignment: Alignment.center,
                child: SvgPicture.asset(
                  'assets/illustration (2).svg',
                  height: 260,fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 100,
              ),
              DotsIndicator(
                dotsCount: 3,
                // Replace with the total number of dots
                position: 2,
                // Replace with the current position of the active dot (starts from 0)
                decorator: DotsDecorator(
                  activeColor: Colors.blue,
                  // Replace with your desired color for active dot
                  activeSize: Size(18.0, 9.0),
                  // Replace with your desired size of active dot
                  activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          5.0)), // Replace with your desired shape of active dot
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text('Let’s start living healthy and',
                  style: TextStyle(fontSize: 19, color: Color(0xff246AFC),fontWeight: FontWeight.bold)),
              SizedBox(
                height: 5,
              ),
              Text(
                'well with us right now!',
                style: TextStyle(fontSize: 19, color: Color(0xff246AFC),fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(fixedSize: Size(340, 40),
                      backgroundColor: Color(0XFF262BC6),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => Started()),
                          (route) => false,
                    );
                  },
                  child: Text('Next',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),))
            ],
          ),
        ));
  }
}
