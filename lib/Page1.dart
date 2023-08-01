
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'Page2.dart';
void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Page1(),
  ));
}

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
      children: [
          // ignore: prefer_const_constructors
          SizedBox(
            height: 50,
          ),
          Center(
            child: Image.asset('assets/Group 2906.png',
                height: 300, fit: BoxFit.cover),
          ),
          const SizedBox(
            height: 80,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Transform.translate(
                offset: const Offset(-31, 0),
                child: const Text('Welcome to',
                    style: TextStyle(
                        color: Color(0xff262CC7),fontFamily: 'times new roman',
                        fontWeight: FontWeight.bold,
                        fontSize: 24),),
              ),
              Transform.translate(
                  offset: const Offset(30, 0),
                  child: InkWell(onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Page2()),
                    );

                  },
                    child: const Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 18,
                      color: Color(0xff262CC7),
                    ),
                  ))
            ],
          ),
          const SizedBox(height: 5,),
          const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Text('Calneh E-Healthcare',
                  style: TextStyle(
                      color: Color(0xff262CC7),fontFamily: 'times new roman',
                      fontWeight: FontWeight.bold,
                      fontSize: 24)),
            ),
          ),
          const SizedBox(height: 30,),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('The Best online doctor appoinment & consultation',style: TextStyle(fontSize: 12)),
                SizedBox(height: 5,),
                Text('The app of the century for your health and medical',style: TextStyle(fontSize: 12)),
                SizedBox(height: 5,),
                Align(alignment: Alignment.centerLeft,
                    child: Text('needs!',style: TextStyle(fontSize: 14))),
              ],
            ),
          ),

      ],
    ),
        ));
  }
}
