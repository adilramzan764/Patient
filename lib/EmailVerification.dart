
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Login_In.dart';
import 'Phone_Verification.dart';

class EmailVerification extends StatefulWidget {
  const EmailVerification({Key? key}) : super(key: key);

  @override
  State<EmailVerification> createState() => _EmailVerificationState();
}

class _EmailVerificationState extends State<EmailVerification> {
  bool isTextField1Selected =
  false; // Track the selection state of the first text field
  bool isTextField2Selected =
  false; // Track the selection state of the second text field
  bool isTextField3Selected = false;
  bool isTextField4Selected = false;
  bool check = false;
  bool _isFocused = false;
  final FocusNode _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
          SizedBox(
            height: 60,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(
                    context);
                },
                child: Icon(Icons.arrow_back, size: 30,color: Colors.black),
              ),
              Transform.translate(offset: Offset(-45,0),
                child: Text(
                  'Email Verification',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 100,
          ),
          Text('The code has been sent to Jame*****@gmail.com',style: TextStyle(fontSize: 14)),
          SizedBox(
            height: 10,
          ),
          Form(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  //textfield 1
                  SizedBox(
                    height: 50,
                    width: 50,
                    child: TextFormField(
                      onChanged: (gh){
                        FocusScope.of(context).nextFocus();
                        setState(() {
                          isTextField1Selected =
                          false;
                          isTextField2Selected =
                          true;
                          isTextField3Selected = false;
                          isTextField4Selected = false;
                        });
                      },
                      onTap: () {
                        setState(() {
                          isTextField1Selected =
                          true;
                          isTextField2Selected =
                          false;
                          isTextField3Selected = false;
                          isTextField4Selected = false;
                        });
                      },
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(1)],
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: isTextField1Selected ? Colors.blue.withOpacity(0.2) : Colors.white,
                      ),
                    ),
                  ),
                  //textfield 2
                  SizedBox(
                    height: 50,
                    width: 50,
                    child: TextFormField(onChanged: (gh){
                      FocusScope.of(context).nextFocus();
                      setState(() {
                        isTextField1Selected =
                        false;
                        isTextField2Selected =
                        false;
                        isTextField3Selected = true;
                        isTextField4Selected = false;
                      });
                    },
                      onTap: () {
                        setState(() {
                          isTextField1Selected =
                          false; // Set the selection state to true when the text field is tapped
                          isTextField2Selected =
                          true; // Set the selection state of other text fields to false
                          isTextField3Selected = false;
                          isTextField4Selected = false;
                        });
                      },
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(1)],
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: isTextField2Selected ? Colors.blue.withOpacity(0.2) : Colors.white,
                      ),
                    ),
                  ),
                  //textfield 3
                  SizedBox(
                    height: 50,
                    width: 50,
                    child: TextFormField(onChanged: (gh){
                      FocusScope.of(context).nextFocus();
                      setState(() {
                        isTextField1Selected =
                        false;
                        isTextField2Selected =
                        false;
                        isTextField3Selected = false;
                        isTextField4Selected = true;
                      });
                    },
                      onTap: () {
                        setState(() {
                          isTextField1Selected =
                          false; // Set the selection state to true when the text field is tapped
                          isTextField2Selected =
                          false; // Set the selection state of other text fields to false
                          isTextField3Selected = true;
                          isTextField4Selected = false;
                        });
                      },
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(1)],
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: isTextField3Selected ? Colors.blue.withOpacity(0.2) : Colors.white,
                      ),
                    ),
                  ),
                  //textfield 4
                  SizedBox(
                    height: 50,
                    width: 50,
                    child: TextFormField(onChanged: (gh){
                      FocusScope.of(context).nextFocus();
                    },
                      onTap: () {
                        setState(() {
                          isTextField1Selected =
                          false; // Set the selection state to true when the text field is tapped
                          isTextField2Selected =
                          false; // Set the selection state of other text fields to false
                          isTextField3Selected = false;
                          isTextField4Selected = true;
                        });
                      },
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(1)],
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: isTextField4Selected ? Colors.blue.withOpacity(0.2) : Colors.white,
                      ),
                    ),
                  )
                ],
              )),
          SizedBox(
            height: 20,
          ),
          RichText(
              text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: 'ResendCodein  ',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                    TextSpan(
                      text: '55',
                      style: TextStyle(
                          color: Colors.blue, fontSize: 18
                      ),
                    ),
                    TextSpan(
                      text: 's',
                      style: TextStyle(
                          color: Colors.black, fontSize: 18
                      ),
                    ),
                  ]
              )
          ),
          const SizedBox(height: 80,),


          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size(350, 50),
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
                'Verify',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              )),

        ]
        )
    );
  }
}
