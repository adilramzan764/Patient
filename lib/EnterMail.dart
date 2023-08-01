
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'ChangePassword.dart';
import 'Login_In.dart';
import 'NewPassword.dart';

class EnterMail extends StatefulWidget {
  const EnterMail({Key? key}) : super(key: key);

  @override
  State<EnterMail> createState() => _EnterMailState();
}

class _EnterMailState extends State<EnterMail> {
  final FocusNode _focusNode = FocusNode();
  bool _isFocused = false;
  bool _isChecked = false;
  bool isTextField1Selected = false; // Track the selection state of the first text field
  bool isTextField2Selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const NewPassword()),
                      );
                    },
                    child: Icon(Icons.arrow_back, size: 30, color: Colors.black),
                  ),
                  Transform.translate(offset: Offset(20,0),
                    child: Text(
                      'Enter your Mail',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text('Please provide us your email for change  ',
                style: TextStyle(fontSize: 16)),
            SizedBox(
              height: 5,
            ),
            Transform.translate(offset: Offset(-78,0),
              child: Text(
                'password request. ',
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                decoration: BoxDecoration(
                    boxShadow: [BoxShadow(color: Colors.white)],
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    border: Border.all(color: Colors.blue, width: 1.5)),
                height: 50,
                child: TextFormField(
                  onTap: (

                      ) {
                    setState(() {
                      setState(() {
                        isTextField1Selected = true; // Set the selection state of other text fields to false
                        isTextField2Selected = false; // Set the selection state to true when the text field is tapped

                      });
                    });
                  },
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(width: 1.5, color: Colors.blue)),
                      fillColor: isTextField1Selected ? Color(0xffD0DEE8) : Colors.white,
                      filled: true,
                      hintText: 'James_andrew@gmail.com',
                      hintStyle: TextStyle(color: Colors.black, fontSize: 16),
                      contentPadding: EdgeInsets.all(10),
                      prefixIcon: Transform.scale(
                          scale: 0.6,
                          child: SvgPicture.asset(
                            'assets/mail-line.svg',
                          )),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide:
                          BorderSide(color: Colors.blue, width: 1.5))),
                ),
              ),
            ),
            SizedBox(height: 350,),

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
                        MaterialPageRoute(builder: (context) => const LoginIn()
                        )
                    );
                  },
                  child: const Text(
                    'Continue',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  )),
            ),
          ]
          ),
        )
    );


  }
}
