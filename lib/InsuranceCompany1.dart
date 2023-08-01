
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'Basic_Women_Health.dart';
import 'InsuranceField.dart';
import 'MainScreen.dart';
import 'MedicalRecord2.dart';
import 'Pharmacy.dart';
import 'Profile_Page.dart';
class InsuranceCompany1 extends StatefulWidget {
  const InsuranceCompany1({Key? key}) : super(key: key);

  @override
  State<InsuranceCompany1> createState() => _InsuranceCompany1State();
}

class _InsuranceCompany1State extends State<InsuranceCompany1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(physics: NeverScrollableScrollPhysics(),
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
              Transform.translate(offset: Offset(-20,0),
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
          SizedBox(height: 180,),
          Center(
            child: SvgPicture.asset(
              'assets/search (1).svg',
            ),
          ),
          SizedBox(height: 20,),
          Column(
            children: [
              Text('You haven’t add any insurance\n           company yet',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold)),

              SizedBox(
                height: 40,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size(140, 50),
                      backgroundColor: Colors.white,
                      shape: const RoundedRectangleBorder(
                          side: BorderSide(color: Colors.blue),
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const InsuranceField()));
                  },
                  child: const Text(
                    'Add Now',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.blue),
                  )),
            ],
          ),
        ]),
      ),
    );
  }
}
