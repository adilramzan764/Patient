
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'Basic_Women_Health.dart';
import 'MedicalRecord1.dart';
import 'MedicalRecordMaintain.dart';
import 'Profile_Page.dart';
class MedicalRecord2 extends StatefulWidget {
  const MedicalRecord2({Key? key}) : super(key: key);

  @override
  State<MedicalRecord2> createState() => _MedicalRecord2State();
}

class _MedicalRecord2State extends State<MedicalRecord2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(height: MediaQuery.of(context).size.height/1.5,width: MediaQuery.of(context).size.width,
            color: Color(0XFFDCDCDC),
            child: SingleChildScrollView(
              child: Column(children: [SizedBox(height: 60,),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 100),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(onTap:(){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const MedicalRecord1()
                            )
                        );
                      },

                          child: Icon(Icons.arrow_back)),
                      Text('Medical Records',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)
                    ],
                  ),
                ),
SizedBox(height: 100,),
                SvgPicture.asset('assets/search (1).svg'),
                SizedBox(height: 10,),
                Text('No Medical Rrcords       ',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),)
              ]),
            ),
          ),
            Container(height: 225,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(color: Colors.grey,blurRadius: 2.5)
              ], color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                    children: [SizedBox(height: 20,),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text
                        ('Take a Photo',style: TextStyle(fontWeight: FontWeight.bold,),),
                      Icon(Icons.arrow_forward_ios_rounded)
                    ],
                  ),
                  SizedBox(height: 10,),
                  Divider(height: 1,color: Color(0XFFEDEFF3),thickness: 2,),
                  SizedBox(height: 20,),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(onTap:(){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const MedicalRecordsMaintain()
                            )
                        );
                      },
                        child: Text
                          ('Upload From Gallery',style: TextStyle(fontWeight: FontWeight.bold,),),
                      ),
                      Icon(Icons.arrow_forward_ios_rounded)
                    ],
                  ),
                  SizedBox(height: 10,),
                  Divider(height: 1,color: Color(0XFFEDEFF3),thickness: 2,),
                  SizedBox(height: 20,),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(onTap:(){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const MedicalRecordsMaintain()
                            )
                        );
                      },
                        child: Text
                          ('Upload PDFs',style: TextStyle(fontWeight: FontWeight.bold,),),
                      ),
                      Icon(Icons.arrow_forward_ios_rounded)
                    ],
                  ),
                  SizedBox(height: 10,),
                  Divider(height: 1,color: Color(0XFFEDEFF3),thickness: 2,),
                ]),
              ),


            )
        ],
      ),
    );
  }
}

