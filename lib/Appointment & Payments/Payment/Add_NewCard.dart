import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'Select_PaymentMethod2.dart';

class Add_NewCard extends StatefulWidget {
  const Add_NewCard({Key? key}) : super(key: key);

  @override
  State<Add_NewCard> createState() => _Add_NewCardState();
}

class _Add_NewCardState extends State<Add_NewCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
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
                    "Add New Card",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 25,
                    width: 30,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              child: Container(
                height: 220,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),

                  gradient: const LinearGradient(
                    colors: [Color(0xffFD0E0E), Color(0xff703C6D)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,

                  ),
              ),
                child:
        // Image.asset('assets/card.svg',fit: BoxFit.cover,)

                Column(
                  children: [
                    Padding(padding: EdgeInsets.all(15),
                    child: Row(
                      children: [
                        Align(alignment: Alignment.centerLeft,
                        child: SvgPicture.asset('assets/bank.svg',height: 25,width: 25,),),

                        SizedBox(width: 8,),
                        Text('FYI BANK',style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),),

                        Expanded(
                          child: Align(
                              alignment: Alignment.centerRight,
                              child: Text('CREDIT',style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),)),
                        )

                      ],
                    ),),

                    Padding(padding: EdgeInsets.only(top: 20,left: 15,right: 15),child: Row(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text('0000  2363  8364  8269',style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),),
                        ),
                        Expanded(child: Align(alignment: Alignment.centerRight,
                          child: SvgPicture.asset('assets/WIFI.svg',height: 25,width: 25,),),)
                      ],
                    ),),

                    Padding(padding: EdgeInsets.only(top: 25,left: 30,right: 15),child: Row(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text('VALID\nTHRU',style: TextStyle(fontSize: 8,color: Colors.white,),textAlign: TextAlign.center,),
                        ),
                        SizedBox(width: 4,),
                        Text('5/23',style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),),

                        // SizedBox(width: 15,),
                        // Spacer(),
                        SizedBox(width: 35,),

                        Text('CVV',style: TextStyle(fontSize: 8,color: Colors.white,),textAlign: TextAlign.center,),
                        SizedBox(width: 4,),

                        Text('633',style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),)
                      ],
                    ),),
                    Expanded(child: Align(alignment: Alignment.bottomCenter,child: Padding(padding: EdgeInsets.all(15),
                      child: Row(
                        children: [
                          Align(alignment: Alignment.centerLeft,
                            child: Text('James Andrew',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),),

                          Expanded(
                            child: Align(
                                alignment: Alignment.centerRight,
                                child: Text('VISA',style: TextStyle(fontSize: 22,color: Colors.white,fontWeight: FontWeight.bold),)),
                          )

                        ],
                      ),),))
                  ],
                ),
            )),
            // SizedBox(height: 8,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Card Name',style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),)),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
              child: Container(
                height: 50.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffE9F0FF),
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
                  // maxLines: null,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16 // Set the input text style as bold
                  ),
                  decoration: InputDecoration(
                    // hintText: "Dr. Travis Westby is a very friendly and professional person in carrying out his duties. I consulted him for 30 minutes and he also always responded to my complaints swiftly and clearly. I really like, and highly recommended Dr. Travis Westby to you.|",
                    contentPadding:
                    EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                    // hintMaxLines: null,// Set the padding here
                    hintText: "James Andrew",
                    hintStyle: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 14,),
                    border: InputBorder.none,
                    // contentPadding: EdgeInsets.only( bottom: 8),
                  ),
                ),
              ),
            ),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Card Number',style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),)),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
              child: Container(
                height: 50.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffE9F0FF),
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
                  // maxLines: null,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16 // Set the input text style as bold
                  ),
                  decoration: InputDecoration(
                    // hintText: "Dr. Travis Westby is a very friendly and professional person in carrying out his duties. I consulted him for 30 minutes and he also always responded to my complaints swiftly and clearly. I really like, and highly recommended Dr. Travis Westby to you.|",
                    contentPadding:
                    EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                    // hintMaxLines: null,// Set the padding here
                    hintText: "2672  4738  7837  7285",
                    hintStyle: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 14,),
                    border: InputBorder.none,
                    // contentPadding: EdgeInsets.only( bottom: 8),
                  ),
                ),
              ),
            ),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Align(alignment: Alignment.centerLeft,
                      child: Text('Expiry Date',style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),),
                  ),

                  Expanded(
                    flex: 2,
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text('CVV',style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),)),
                  )

                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
              child: Row(

                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    // flex: 2,
                    child: Align(alignment: Alignment.centerLeft,
                      child:Container(
                        height: 50.0,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffE9F0FF),
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
                          // maxLines: null,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16 // Set the input text style as bold
                          ),
                          decoration: InputDecoration(
                            // hintText: "Dr. Travis Westby is a very friendly and professional person in carrying out his duties. I consulted him for 30 minutes and he also always responded to my complaints swiftly and clearly. I really like, and highly recommended Dr. Travis Westby to you.|",
                            contentPadding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                            // hintMaxLines: null,// Set the padding here
                            hintText: "07/26",
                            suffixIcon: Icon(CupertinoIcons.calendar,color: Colors.black,),
                            hintStyle: TextStyle(
                              color: Color(0xff000000),
                              fontSize: 14,),
                            border: InputBorder.none,
                            // contentPadding: EdgeInsets.only( bottom: 8),
                          ),
                        ),
                      )),
                  ),

                  // SizedBox(width: 30,),

                  Expanded(
                    flex: 1,
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          height: 50.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffE9F0FF),
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
                            // maxLines: null,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16 // Set the input text style as bold
                            ),
                            decoration: InputDecoration(
                              // hintText: "Dr. Travis Westby is a very friendly and professional person in carrying out his duties. I consulted him for 30 minutes and he also always responded to my complaints swiftly and clearly. I really like, and highly recommended Dr. Travis Westby to you.|",
                              contentPadding:
                              EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                              // hintMaxLines: null,// Set the padding here
                              hintText: "699",
                              hintStyle: TextStyle(
                                color: Color(0xff000000),
                                fontSize: 14,),
                              border: InputBorder.none,
                              // contentPadding: EdgeInsets.only( bottom: 8),
                            ),
                          ),
                        )),
                  )

                ],
              ),
            ),
SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Select_PaymentMethod2()));

                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.transparent, // Set background color to transparent
                    shadowColor: Colors.transparent, // Set shadow color to transparent
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0), // Rounded border radius
                    ),
                  ),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.07,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Color(0xff246BFD), Color(0xff262BC6)],
                        end: Alignment.topLeft,
                        begin: Alignment.bottomRight,
                      ),

                      borderRadius: BorderRadius.circular(10.0), // Rounded border radius
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 2,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Align(
                          alignment: Alignment.center,
                          child: Text('Add', style: TextStyle(fontSize: 18, color: Colors.white,fontWeight: FontWeight.bold))),
                    ),
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
