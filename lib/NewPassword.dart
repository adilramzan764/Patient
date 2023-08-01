
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'ChangePassword.dart';
import 'EnterMail.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({Key? key}) : super(key: key);

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  final FocusNode _focusNode = FocusNode();
  bool _isFocused = false;
  bool _isChecked = false;
  bool isTextField1Selected = true; // Track the selection state of the first text field
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
                        MaterialPageRoute(builder: (context) => const ChangePassword()),
                      );
                    },
                    child: Icon(Icons.arrow_back, size: 30, color: Colors.black),
                  ),
                  Transform.translate(offset: Offset(20,0),
                    child: Text(
                      'Create New Password',
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
            Text('Please create new password that you can  ',
                style: TextStyle(fontSize: 16)),
            SizedBox(
              height: 5,
            ),
            Transform.translate(offset: Offset(-90,0),
              child: Text(
                'remember easly.',
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                decoration: BoxDecoration(
                    boxShadow: [BoxShadow(color: Colors.white)],
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    border: Border.all(color: Colors.white, width: 1.5)),
                height: 50,
                child: Focus(
                  focusNode: _focusNode,
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
                        suffixIcon: Transform.scale(
                            scale: 0.6,
                            child: SvgPicture.asset('assets/eye-close-line.svg')),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                              color: _isFocused ? Color(0xff246BFD) : Colors.white,
                              // Set the desired color when focused or unfocused
                              width: 2.0,
                            )),
                        fillColor: isTextField1Selected ? Color(0xffD0DEE8) : Colors.white,
                        filled: true,
                        hintText: '.........',
                        hintStyle: TextStyle(color: Colors.black, fontSize: 35),
                        contentPadding: EdgeInsets.all(10),
                        prefixIcon: Transform.scale(
                            scale: 0.6,
                            child: SvgPicture.asset(
                              'assets/lock-line.svg',
                            )),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide:
                            BorderSide(color: Colors.blue, width: 1.5))),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                decoration: BoxDecoration(
                    boxShadow: [BoxShadow(color: Colors.white)],
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    border: Border.all(color: Colors.white, width: 1.5)),
                height: 50,
                child: Focus(
                  focusNode: _focusNode,
                  child: TextFormField(
                    onTap: (

                        ) {
                      setState(() {
                        setState(() {
                          isTextField1Selected = false; // Set the selection state of other text fields to false
                          isTextField2Selected = true; // Set the selection state to true when the text field is tapped

                        });
                      });
                    },
                    decoration: InputDecoration(
                        suffixIcon: Transform.scale(
                            scale: 0.6,
                            child: SvgPicture.asset('assets/eye-close-line.svg')),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                              color: _isFocused ? Color(0xff246BFD) : Colors.white,
                              // Set the desired color when focused or unfocused
                              width: 2.0,
                            )),
                        fillColor: isTextField2Selected ? Color(0xffD0DEE8) : Colors.white,
                        filled: true,
                        hintText: '.........',
                        hintStyle: TextStyle(color: Colors.black, fontSize: 35),
                        contentPadding: EdgeInsets.all(10),
                        prefixIcon: Transform.scale(
                            scale: 0.6,
                            child: SvgPicture.asset(
                              'assets/lock-line.svg',
                            )),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide:
                            BorderSide(color: Colors.blue, width: 1.5))),
                  ),
                ),
              ),
            ),



            SizedBox(height: 300,),

            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(350, 50),
                    backgroundColor: const Color(0XFF262BC6),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const EnterMail()
                      )
                  );
                },
                child: const Text(
                  'Continue',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                )),
          ]
          ),
        )
    );


  }
}
