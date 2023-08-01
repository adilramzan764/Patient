import 'package:calne_heatlh_care1/Profile/Add_Allergy.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Medical extends StatefulWidget {
  const Medical({Key? key}) : super(key: key);

  @override
  State<Medical> createState() => _MedicalState();
}

class _MedicalState extends State<Medical> {
  int _selectedIndex = -1;
  List< TextEditingController> _textEditingController =[
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
  ];
  int _selectedTextFieldIndex = -1;
  final List<String> hints = [
    'Allergies',
    'Current Medications',
    'Past Medications',
    'Chronic Diseases',
    'Injuries',
    'Surgeries',

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.builder(
        itemCount: hints.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
              height: 80,
              child: Stack(
                children: [

                  Padding(
                    padding: const EdgeInsets.only(top:15,left: 8),
                    child: Text(
                      hints[index],

                      style: TextStyle(
                        color: _selectedTextFieldIndex==index ? Colors.black : Colors.grey,
                        fontWeight: _selectedTextFieldIndex == index
                            ? FontWeight.bold
                            : FontWeight.normal,
                      ),
                    ),
                  ),

                  Align(
                    alignment: Alignment.bottomCenter,
                    child: GestureDetector(
                      onTap: (){
                        //
                      },
                      child: TextField(


                        controller: _textEditingController[index],
                        onTap: () {
                          setState(() {
                            _selectedIndex = index;
                            _selectedTextFieldIndex = index;

                          });
                          if(hints[index]=='Allergies')
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Add_Allergy()),
                            );
                        },
                        decoration: InputDecoration(

                          filled: true,
                          fillColor: _selectedIndex == index
                              ?                                 Colors.blue.withOpacity(0.2)

                              : Colors.transparent,

                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),


                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                                color: Colors.grey.shade300

                              // width: 1.0,
                            ),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 8.0,
                            vertical: 24.0,
                          ),
                          focusedBorder: OutlineInputBorder(

                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                              color: _selectedIndex == index
                                  ? Colors.blue
                                  : Colors.white,
                              // width: 1.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
