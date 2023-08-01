
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'Basic_Women_Health.dart';
import 'ForgetPassword.dart';
import 'Pharmacy.dart';
import 'Test_Bookiings1.dart';
class Orders extends StatefulWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 80,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(
                    context
                  );
                },
                child: Icon(Icons.arrow_back, size: 30, color: Colors.black),
              ),
              Transform.translate(
                offset: Offset(-60, 0),
                child: Text(
                  '0rders    ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 50,),
          Center(
            child: SvgPicture.asset(
              'assets/no content backup.svg',
            ),
          ),
          SizedBox(height: 140,),
          Transform.translate(
            offset: Offset(0, -120),
            child: Column(
              children: [
                Text('No orders placed  ',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Place your first order now',
                  style: TextStyle(
                      fontSize: 16,color: Color(0xff77787A)
                      ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(180, 50),
                        backgroundColor: Colors.white,
                        shape: const RoundedRectangleBorder(
                            side: BorderSide(color: Colors.blue),
                            borderRadius: BorderRadius.all(Radius.circular(10)))),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Pharmacy()));
                    },
                    child: const Text(
                      'Orders Medicines',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.blue),
                    )),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
