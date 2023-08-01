
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'ChangePassword.dart';
import 'Login_In.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
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
                        MaterialPageRoute(builder: (context) => const LoginIn()),
                      );
                    },
                    child: Icon(Icons.arrow_back, size: 30, color: Colors.black),
                  ),
                  Transform.translate(offset: Offset(20,0),
                    child: Text(
                      'Forget Password',
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
              height: 10,
            ),
            SvgPicture.asset('assets/Illustration (5).svg'),
            SizedBox(
              height: 20,
            ),
            Text('Please select, Which contact detail you want to ',
                style: TextStyle(fontSize: 16)),
            SizedBox(
              height: 5,
            ),
            Transform.translate(offset: Offset(-68,0),
              child: Text(
                'use to reset your password?',
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Container(height: 100,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(color: Colors.grey,blurRadius: 2.5)
                ],color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(10))),
                child: ListTile(
                  leading: SvgPicture.asset('assets/Group 39.svg'),
                  title: Text('Via Phone Number',style: TextStyle(fontSize: 16)),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Text('+92 3*****6789',style: TextStyle(fontSize: 16)),
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 16.0),
                  dense: true,
                  onTap: () {
                  },
                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Container(height: 100,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(color: Colors.grey,blurRadius: 2.5)
                ],color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(10))),
                child: ListTile(
                  leading: SvgPicture.asset('assets/Group 39 (1).svg'),
                  title: Text('Via Email',style: TextStyle(fontSize: 16)),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Text('Jame*****@gmail.com',style: TextStyle(fontSize: 16)),
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 16.0),
                  dense: true,
                  onTap: () {
                  },
                ),
              ),
            ),
            SizedBox(height: 40,),

            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(350, 50),
                    backgroundColor: const Color(0XFF262BC6),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ChangePassword()
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
