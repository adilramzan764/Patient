
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'Basic_Women_Health.dart';
import 'MainScreen.dart';
import 'MedicalRecord2.dart';
import 'Pharmacy.dart';
import 'Profile_Page.dart';
class MedicalRecord1 extends StatefulWidget {
  const MedicalRecord1({Key? key}) : super(key: key);

  @override
  State<MedicalRecord1> createState() => _MedicalRecord1State();
}

class _MedicalRecord1State extends State<MedicalRecord1> {
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
                  'Medical Records',
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
              Text('No Medical Records     ',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold)),

              SizedBox(height: 100,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        fixedSize:  Size(MediaQuery.of(context).size.width , 50),
                        backgroundColor: const Color(0XFF262BC6),
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)))),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const MedicalRecord2()
                          )
                      );
                    },
                    child: const Text(
                      'Add Record',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    )),
              ),


            ],
          ),
        ]),
      ),
    );
  }
}
