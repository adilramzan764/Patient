import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../MainScreen.dart';

class Write_Review extends StatefulWidget {
  const Write_Review({Key? key}) : super(key: key);

  @override
  State<Write_Review> createState() => _Write_ReviewState();
}

class _Write_ReviewState extends State<Write_Review> {
  bool _isFocused = false;
  TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  int _rating = 0;

  void _setRating(int rating) {
    setState(() {
      _rating = rating;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 60),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 50,
                    width: 30,
                    child: IconButton(
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        Navigator.pop(context);


                      },
                      iconSize: 24,
                    ),
                  ),
                  const Text(
                    "Write a Review",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 50,
                    width: 30,
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/doc3.svg'),
                    fit: BoxFit.cover,
                  ),
                  // color: Color(0xffD9E2F4),
                ),
                // child: CircleAvatar(
                //   // backgroundColor: Colors.transparent,
                //   child: SvgPicture.asset('assets/doc.svg',fit: BoxFit.cover,),
                // ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Center(
                  child: Text(
                "How was your experience with Dr. Travis Westaby?",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff000000)),
              )),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(5, (index) {
                return IconButton(
                  icon: Icon(
                    index < _rating ? Icons.star : Icons.star_border,
                    color: Color(0xff2564F7),
                  ),
                  onPressed: () {
                    _setRating(index + 1);
                  },
                );
              }),
            ),
            // SizedBox(height: 15,),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 40.0, vertical: 15),
              child: Divider(
                thickness: 2,
                color: Color(0xffEEEDED),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Write Review",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff000000)),
                  )),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                height: 200.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffF3F3F3),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFF545454).withOpacity(0.3),
                      // spreadRadius: 2,
                      blurRadius: 3,
                      // offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: TextField(
                  maxLines: null,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16 // Set the input text style as bold
                      ),
                  decoration: InputDecoration(
                    // hintText: "Dr. Travis Westby is a very friendly and professional person in carrying out his duties. I consulted him for 30 minutes and he also always responded to my complaints swiftly and clearly. I really like, and highly recommended Dr. Travis Westby to you.|",
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                    // hintMaxLines: null,// Set the padding here
                    hintStyle: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                    border: InputBorder.none,
                    // contentPadding: EdgeInsets.only( bottom: 8),
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 45,
                        // width: MediaQuery.of(context).size.width * 0.6,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(
                            color: Color(0xff246BFD),
                            // Set the border color here
                            width: 2.0,
                          ),
                        ),
                        child: TextButton(
                          onPressed: () {
                            // Add your button action here
                          },
                          //
                          child: Text(
                            'Cancel',
                            style: TextStyle(
                                color: Color(0xff246BFD), fontSize: 13),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 45,
                        // width: MediaQuery.of(context).size.width * 0.6,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0xff246BFD), Color(0xff262BC6)],
                            end: Alignment.topLeft,
                            begin: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: TextButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return Dialog(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    backgroundColor: Colors.white,
                                    child: LayoutBuilder(builder:
                                        (BuildContext context,
                                            BoxConstraints constraints) {
                                      return Container(
                                        width: constraints.maxWidth * 0.8,
                                        // Adjust the width as needed
                                        height: constraints.maxHeight * 0.5,
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  top: 10,
                                                ),
                                                child: Align(
                                                  alignment: Alignment.center,
                                                  child: Container(
                                                      height:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height *
                                                              0.2,
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              0.4,
                                                      child: SvgPicture.asset(
                                                        'assets/s_e.svg',
                                                      )),
                                                ),
                                              ),
                                              Padding(padding: EdgeInsets.symmetric(vertical: 15),
                                              child: Text("Congratulations!",style: TextStyle(fontSize: 16,color: Color(0xff246BFD),fontWeight: FontWeight.bold),),),
                                              Text("Your review has been ",style: TextStyle(fontSize: 12,color: Color(0xff77787A)),textAlign: TextAlign.center,),
                                              Text("successfully submitted, thank you",style: TextStyle(fontSize: 12,color: Color(0xff77787A)),textAlign: TextAlign.center),
                                              Text("very much!",style: TextStyle(fontSize: 12,color: Color(0xff77787A)),textAlign: TextAlign.center)
                                            ],
                                          ),
                                        ),
                                      );
                                    }));
                              },
                            ).then((value) {
                              // This block is executed after the dialog is dismissed
                              // Navigate to the home screen
                              Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(builder: (context) => MainScreen()),
                                    (route) => false,
                              );
                            });
                          },
                          //
                          child: Text(
                            'Submit',
                            style: TextStyle(color: Colors.white, fontSize: 13),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
