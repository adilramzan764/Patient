
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'Page4.dart';

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
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
              'assets/illustration (1).svg',
              height: 280,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 100,
          ),
          DotsIndicator(
            dotsCount: 3,
            // Replace with the total number of dots
            position: 1,
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
          Text('Health checks consultations & experts',
              style: TextStyle(
                  fontSize: 19,
                  color: Color(0xff246AFC),
                  fontWeight: FontWeight.bold)),
          SizedBox(
            height: 5,
          ),
          Text(
            'to help your health!',
            style: TextStyle(
                fontSize: 19,
                color: Color(0xff246AFC),
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(340, 40),
                  backgroundColor: Color(0XFF262BC6),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Page4()),
                );
              },
              child: Text(
                'Next',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ))
      ],
    ),
        ));
  }
}
