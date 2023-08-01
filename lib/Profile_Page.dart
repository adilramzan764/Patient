
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'Phone_Verification.dart';
import 'SignUp.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool isTextField1Selected = false; // Track the selection state of the first text field
  bool isTextField2Selected = false; // Track the selection state of the second text field
  bool isTextField3Selected = false;
  bool check = false;
  bool _isFocused = false;
  final FocusNode _focusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          const SizedBox(
            height: 80,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignUp()),
                );
              },
                  child: const Icon(Icons.arrow_back, size: 25)),
              Transform.translate(offset: Offset(-10,0),
                child: const Text(
                  'Complete Your Profile',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            child: Stack(
              children: [
                Image.asset('assets/iryna-makarchuk-MDt3FQMgvVo-unsplash 1.png'),
                Positioned.fill(
                  child: Image.asset('assets/Vector.png'),
                ),
              ],
            ),
          ),



// First Text Field
        const SizedBox(
        height: 30,
      ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SizedBox(
            height: 50,
            child: TextFormField(
              onTap: () {
                setState(() {
                  isTextField1Selected = true; // Set the selection state to true when the text field is tapped
                  isTextField2Selected = false; // Set the selection state of other text fields to false
                  isTextField3Selected = false;
                });
              },
              decoration: InputDecoration(
                enabledBorder:  OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(width: 1.5, color:  isTextField1Selected ? Colors.blue : Colors.white),
                ),
                fillColor: isTextField1Selected ? Colors.blue.withOpacity(0.1) : Colors.white,
                filled: true,
                hintText: '+923123456789',
                hintStyle: const TextStyle(color: Colors.black, fontSize: 16),
                contentPadding: const EdgeInsets.all(10),
                prefixIcon: Transform.scale(
                  scale: 0.6,
                  child: SvgPicture.asset(
                    'assets/phone-line.svg',
                  ),
                ),
                border:  OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: isTextField1Selected ? Colors.blue : Colors.white, width: 1.5),
                ),
              ),
            ),
          ),
        ),

// Second Text Field
          SizedBox(
            height: 10,
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
                        isTextField2Selected = true;
                        isTextField3Selected = false;
                        // Set the selection state to true when the text field is tapped

                      });
                    });
                  },
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(
                            color: _isFocused ? Color(0xff246BFD) : Colors.white,
                            // Set the desired color when focused or unfocused
                            width: 2.0,
                          )),
                      fillColor: isTextField2Selected ? Colors.blue.withOpacity(0.1) : Colors.white,
                      filled: true,
                      hintText: '07/21/1999',
                      hintStyle: TextStyle(color: Colors.black, fontSize: 17),
                      contentPadding: EdgeInsets.all(10),
                      prefixIcon: Transform.scale(
                          scale: 0.6,
                          child: SvgPicture.asset(
                            'assets/calendar-todo-line.svg',
                          )),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide:
                          BorderSide(color: Colors.blue, width: 1.5))),
                ),
              ),
            ),
          ),

// Third Text Field
          SizedBox(
            height: 10,
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
                        isTextField2Selected = false;
                        isTextField3Selected = true;
                        // Set the selection state to true when the text field is tapped

                      });
                    });
                  },
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(
                            color: _isFocused ? Color(0xff246BFD) : Colors.white,
                            // Set the desired color when focused or unfocused
                            width: 2.0,
                          )),
                      fillColor: isTextField3Selected ? Colors.blue.withOpacity(0.1) : Colors.white,
                      filled: true,
                      hintText: 'Male',
                      hintStyle: TextStyle(color: Colors.black, fontSize: 17),
                      contentPadding: EdgeInsets.all(10),
                      prefixIcon: Transform.scale(
                          scale: 0.6,
                          child: SvgPicture.asset(
                            'assets/user-3-line.svg',
                          )),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide:
                          BorderSide(color: Colors.blue, width: 1.5))),
                ),
              ),
            ),
          ),
        const SizedBox(height:100,),


        ElevatedButton(
              style: ElevatedButton.styleFrom(
                  fixedSize:  Size(350, 50),
                  backgroundColor: const Color(0XFF262BC6),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PhoneVerification()),
                );
              },
              child: const Text(
                'Continue',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              )),



        ]),
      ),
    );
  }
}
