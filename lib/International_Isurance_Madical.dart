import 'package:flutter/material.dart';

import 'MainScreen.dart';

class InternationalIsurance extends StatefulWidget {
  const InternationalIsurance({Key? key}) : super(key: key);

  @override
  State<InternationalIsurance> createState() => _InternationalIsuranceState();
}

class _InternationalIsuranceState extends State<InternationalIsurance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        SizedBox(
          height: 80,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => MainScreen()),
                      (route) => false,
                );
              },
              child: Icon(Icons.arrow_back, size: 30, color: Colors.black),
            ),
            Transform.translate(
              offset: Offset(-20, 0),
              child: Text(
                'Insurance Company',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 60,
          decoration: BoxDecoration(color: Color(0xff246BFD)),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('International Medical Group, INC.',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold)),
                    SizedBox(height: 5,),
                    Image.asset(
                      'assets/more-2-line.png',
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Text(
                      '+92123456789',
                      style: TextStyle(color: Colors.white, fontSize: 13),
                    ),
                    Text(
                      'InternationalMedicalGroupINC@gmail.com',
                      style: TextStyle(color: Colors.white, fontSize: 13),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 200,
          color: Color(0XFFF4F4F4),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Isurance ID'),
                    Text('#123456789',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Expirey Date'),
                    Text('01-Jan-2025',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Max Insurance Limit'),
                    Text('\$ 50,000',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Your Contact Number'),
                    Text('+92123456789',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Panding',
                  style: TextStyle(color: Color(0xffFEB701)),
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
