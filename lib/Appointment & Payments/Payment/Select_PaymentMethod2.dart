// import 'package:calne_heatlh_care1/Payment/Add_NewCard.dart';
// import 'package:calne_heatlh_care1/Payment/Review_Summary.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'Add_NewCard.dart';
import 'Review_Summary.dart';

class Select_PaymentMethod2 extends StatefulWidget {
  const Select_PaymentMethod2({Key? key}) : super(key: key);

  @override
  State<Select_PaymentMethod2> createState() => _Select_PaymentMethod2State();
}

class _Select_PaymentMethod2State extends State<Select_PaymentMethod2> {

  int selectedMethodIndex = -1;
  List<String> svgPictures = [
    'assets/PayPal.svg',
    'assets/Google (1).svg',
    'assets/Apple Pay.svg',
    'assets/Visa.svg',

  ];
  List<String> methods = [
    'PayPal',
    'Google Pay',
    'Apple Pay',
    '--- --- ---  7285',

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 60,),
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
                  "Payments",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 25,
                  width: 30,

                ),
              ],
            ),
          ),

          Padding(padding: EdgeInsets.only(left: 20,right:20,top: 10),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Select the payment method you want to use.',style: TextStyle(fontSize: 14,color: Color(0xff000000)),)),),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
            child:
            ListView.builder(
              shrinkWrap: true,
              itemCount: methods.length,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 5),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        selectedMethodIndex = index;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      shadowColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.1,
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 2,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          children: [
                            SizedBox(
                              height: 45,
                              width: 45,
                              child: SvgPicture.asset(svgPictures[index]),
                            ),
                            SizedBox(width: 20),
                            Text(
                              methods[index],
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Expanded(
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Radio<int>(
                                  value: index,
                                  groupValue: selectedMethodIndex,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedMethodIndex = value!;
                                    });
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),




          ),
// Spacer(),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30,),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Add_NewCard()));

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
                  color: Color(0xffE9F0FF),

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
                      child: Text('Add New Card', style: TextStyle(fontSize: 14, color: Colors.blue,fontWeight: FontWeight.bold))),
                ),
              ),
            ),
          ),

          Spacer(),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Review_Summary()));

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
                        child: Text('Next', style: TextStyle(fontSize: 18, color: Colors.white,fontWeight: FontWeight.bold))),
                  ),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
