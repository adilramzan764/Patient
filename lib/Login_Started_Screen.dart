
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'Login_In.dart';
import 'Page4.dart';
import 'SignUp.dart';

class Started extends StatefulWidget {
  const Started({Key? key}) : super(key: key);

  @override
  State<Started> createState() => _StartedState();
}

class _StartedState extends State<Started> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 60,
          ),
          Align(
            alignment: Alignment.center,
            child: SvgPicture.asset(
              'assets/illustration (3).svg',
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Let's Get Started",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 26,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Container(
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                    )
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  border: Border.all(
                    color: Color(0xff4285F4),
                    width: 1.5,
                  )),
              child: TextButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/Facebook.svg', height: 28),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Login via facebook',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      )
                    ],
                  )),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Container(
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                    )
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  border: Border.all(
                    color: Color(0xff4285F4),
                    width: 1.5,
                  )),
              child: TextButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/Google (1).svg', height: 28),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Login via Google',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      )
                    ],
                  )),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Container(
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                    )
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  border: Border.all(
                    color: Colors.black,
                    width: 1.5,
                  )),
              child: TextButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/Apple.svg', height: 28),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Login via Apple',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      )
                    ],
                  )),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'or login via email',
            style: TextStyle(color: Color(0xffA0A0A0), fontSize: 17),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(340, 50),
                  backgroundColor: Color(0XFF262BC6),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginIn()),
                );
              },
              child: Text(
                'Login',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              )),
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
                  MaterialPageRoute(builder: (context) => SignUp()),
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
