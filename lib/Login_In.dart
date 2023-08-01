
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'ForgetPassword.dart';
import 'Login_Started_Screen.dart';
import 'MainScreen.dart';
import 'Page4.dart';
import 'SignUp.dart';

class LoginIn extends StatefulWidget {
  const LoginIn({Key? key}) : super(key: key);

  @override
  State<LoginIn> createState() => _LoginInState();
}

class _LoginInState extends State<LoginIn> {
  final FocusNode _focusNode = FocusNode();
  bool _isFocused = false;
  bool _isChecked = false;
  bool isTextField1Selected = false; // Track the selection state of the first text field
  bool isTextField2Selected = false;
  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(height: 40,),
          InkWell(onTap: () {
            Navigator.pop(
              context
            );
          },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Align(alignment: Alignment.topLeft,
                    child: Icon(Icons.arrow_back,)),
              )),

          SvgPicture.asset('assets/Group.svg'),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Align(alignment: Alignment.topLeft,
              child: Text(
                'Log Into Your Account',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              decoration: BoxDecoration(
                  boxShadow: [BoxShadow(color: Colors.white)],
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  border: Border.all(color: Colors.white, width: 1.5)),
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
                        borderSide: BorderSide(width: 1.5, color: _isFocused ? Colors.blue : Colors.white)),
                    fillColor: isTextField1Selected ? Colors.blue.withOpacity(0.1) : Colors.white,
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
          SizedBox(
            height: 20,
          ),
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
                            color: _isFocused ? Colors.blue : Colors.white,
                            // Set the desired color when focused or unfocused
                            width: 2.0,
                          )),
                      fillColor: isTextField2Selected ? Colors.blue.withOpacity(0.1) : Colors.white,
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
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Checkbox(
                  value: _isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      _isChecked = value!;
                    });
                  },
                ),
              ),
              Transform.translate(
                offset: Offset(-15, 0),
                child: Text(
                  'Remember me',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(
                width: 90,
              ),
              InkWell(onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ForgetPassword()),
                );
              },
                child: Text(
                  'Forgot?',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                      fontSize: 18),
                ),
              )
            ],
          ),
          SizedBox(height: 20,),

          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(340, 50),
                  backgroundColor: Color(0XFF262BC6),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => MainScreen()),
                      (route) => false,
                );
              },
              child: Text(
                'Log In',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              )),
          SizedBox(
            height: 20,
          ),
          Text(
            'or login via social ID',
            style: TextStyle(fontSize: 16, color: Color(0xffA0A0A0)),
          ),
          SizedBox(
            height: 20,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                decoration: BoxDecoration(
                    boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 2.5)],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: TextButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () {},
                    child: SvgPicture.asset('assets/Facebook.svg')),
              ),
              Container(
                decoration: BoxDecoration(
                    boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 2.5)],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: TextButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () {},
                    child: SvgPicture.asset('assets/Google (1).svg',height: 25,width: 25,),),
              ),
              Container(
                decoration: BoxDecoration(
                    boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 2.5)],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: TextButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () {},
                    child: SvgPicture.asset('assets/Apple.svg')),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don't have an Account?", style: TextStyle(fontSize: 17)),
              InkWell(onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignUp()),
                );
              },
                child: Text(
                  'SignUp',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
              )
            ],
          )
        ]),
      ),
    );
  }
}
