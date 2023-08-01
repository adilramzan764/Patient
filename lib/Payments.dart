import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Payments extends StatefulWidget {
  const Payments({Key? key}) : super(key: key);

  @override
  State<Payments> createState() => _PaymentsState();
}

class _PaymentsState extends State<Payments> {
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
        children: [
          SizedBox(height: 60,),
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
                      Navigator.pop(
                        context
                      );
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
                  child: SvgPicture.asset('assets/barcode.svg'),
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.49,
              child:
          ListView.builder(
            itemCount: 4, // Replace with the actual item count
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6.0,vertical: 5),
                child: ElevatedButton(
                  onPressed: () {
                    // Handle button press event

                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.transparent, // Set background color to transparent
                    shadowColor: Colors.transparent, // Set shadow color to transparent
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0), // Rounded border radius
                    ),
                  ),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
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
                      child: Row(
                        children: [
                          SizedBox(
                            height: 45,
                            width: 45,
                            child: SvgPicture.asset(svgPictures[index]),
                          ),
                          SizedBox(width: 20),
                          Text(methods[index], style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.bold)),
                          Expanded(child: Align(
                              alignment: Alignment.centerRight,
                              child: Text('Connected', style: TextStyle(fontSize: 14, color: Colors.blue,fontWeight: FontWeight.bold)))),
                        ],
                      ),
                    ),
                  ),
                ),
              )
              ;
            },
          )
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6.0),
            child: ElevatedButton(
              onPressed: () {
                // Handle button press event

              },
              style: ElevatedButton.styleFrom(
                primary: Colors.transparent, // Set background color to transparent
                shadowColor: Colors.transparent, // Set shadow color to transparent
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0), // Rounded border radius
                ),
              ),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.1,
                decoration: BoxDecoration(
                  color: Colors.blue,

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
                  child: Row(
                    children: [

                      Text('International Medical G...', style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold)),
                      Expanded(child: Align(
                          alignment: Alignment.centerRight,
                          child: Text('Connected', style: TextStyle(fontSize: 14, color: Colors.white,fontWeight: FontWeight.bold)))),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 40),
            child: ElevatedButton(
              onPressed: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => Review_Summary()));

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

        ],
      ),
    );
  }
}
