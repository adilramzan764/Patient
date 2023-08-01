
import 'package:flutter/material.dart';

import 'MainScreen.dart';
import 'MedicalRecord1.dart';
import 'MedicalRecord2.dart';
class MedicalRecordsMaintain extends StatefulWidget {
  const MedicalRecordsMaintain({Key? key}) : super(key: key);

  @override
  State<MedicalRecordsMaintain> createState() => _MedicalRecordsMaintainState();
}

class _MedicalRecordsMaintainState extends State<MedicalRecordsMaintain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: SingleChildScrollView(
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
  SizedBox(height: 30,),
  Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Text
        ('05',style: TextStyle(fontWeight: FontWeight.bold),),
      Text
        ('Records added by you',style: TextStyle(fontWeight: FontWeight.bold),),
      Image.asset('assets/more-2-line.png',color: Colors.black,)
    ],
  ),
  Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Text
        ('Aug',style: TextStyle(color: Color(0xff77787A)),),
      Text
        ('Records for James Andew                 ',style: TextStyle(color: Color(0xff77787A)),),

    ],
  ),
  Text('1 Prescription               ',style: TextStyle(fontWeight: FontWeight.bold),),
  SizedBox(height: 30,),
  Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Text
        ('28',style: TextStyle(fontWeight: FontWeight.bold),),
      Text
        ('Records added by you',style: TextStyle(fontWeight: FontWeight.bold),),
      Image.asset('assets/more-2-line.png',color: Colors.black,)
    ],
  ),
  Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Text
        ('July',style: TextStyle(color: Color(0xff77787A)),),
      Text
        ('Records for James Andew                 ',style: TextStyle(color: Color(0xff77787A)),),

    ],
  ),
  Text('1 Prescription               ',style: TextStyle(fontWeight: FontWeight.bold),),

  SizedBox(height: 320,),
  Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            fixedSize:  Size(MediaQuery.of(context).size.width , 50),
            backgroundColor: const Color(0XFF262BC6),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)))),
        onPressed: () {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => MainScreen()),
                (route) => false,
          );
        },
        child: const Text(
          'Add Record',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        )),
  ),


]),
)
);
  }
}
