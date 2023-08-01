
import 'package:calne_heatlh_care1/Appointment%20&%20Payments/Payment/Select_PaymentMethod.dart';
import 'package:calne_heatlh_care1/BabyCare.dart';
import 'package:flutter/material.dart';

import 'Cart_Screen.dart';
import 'Pharmacy.dart';
import 'Profile_Page.dart';
import 'Tab.dart';
class AddCart extends StatefulWidget {
  const AddCart({Key? key}) : super(key: key);

  @override
  State<AddCart> createState() => _AddCartState();
}

class _AddCartState extends State<AddCart> {
  int counter = 0;
  void incrementCounter() {
    setState(() {
      counter++;
    });
  }
  void decrementCounter() {
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
          height: 80,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25,right: 120),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(
                      context
                    );
                  },
                  child: Transform.translate(offset:Offset(-2,0),
                      child: Icon(Icons.arrow_back, size: 30, color: Colors.black)),
                ),
                Transform.translate(offset: Offset(-15,0),
                  child: Text(
                    ' Baby Care',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
          ]),
        ),
          SizedBox(height: 20,),
          ListTile(
            leading: Image.asset(
                'assets/himalaya-baby-powder-50gm 1.png'),
            // Icon or any widget to display on the left side
            title: Text('Himalaya Baby Powder 50 g',style: TextStyle( fontSize: 16,)),
            // Title text
            subtitle: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [SizedBox(height: 10,),
                Text('\$499',
                    style: TextStyle(
                      color: Colors.blue,fontSize: 12,)),
                Transform.translate(offset: Offset(0,-10),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('(Upto 50% off)',
                          style: TextStyle(
                              color: Colors.green,fontSize: 12)),
                      Expanded(
                        child: Transform.scale(scale: 0.8,
                          child: Container(height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(10)), border: Border.all(color: Colors.blue)),
                            child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                TextButton(onPressed:decrementCounter,
                                    child: Image.asset("assets/Minus.png")),
                                Text(counter.toString(),style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold)),
                                TextButton(onPressed:incrementCounter,
                                    child: Image.asset("assets/add-fill.png")),
                              ],
                            )
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          ListTile(
            leading: Image.asset(
                'assets/enfamil-a-3-pwdr-400gm 1.png'),
            // Icon or any widget to display on the left side
            title: Text('Enfamil A+ Stage 3 Follow-up Formula Tin 400 g',style: TextStyle( fontSize: 16,)),
            // Title text
            subtitle: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [SizedBox(height: 10,),
                Text('\$99',
                    style: TextStyle(
                      color: Colors.blue,fontSize: 12,)),
                Transform.translate(offset: Offset(0,-10),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('(Upto 50% off)',
                          style: TextStyle(
                              color: Colors.green,fontSize: 12)),
                      Expanded(
                        child: Transform.scale(scale: 0.8,
                          child: Container(height: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(10)), border: Border.all(color: Colors.blue)),
                              child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  TextButton(onPressed:decrementCounter,
                                      child: Image.asset("assets/Minus.png")),
                                  Text(counter.toString(),style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold)),
                                  TextButton(onPressed:incrementCounter,
                                      child: Image.asset("assets/add-fill.png")),
                                ],
                              )
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    fixedSize:  Size(MediaQuery.of(context).size.width , 50),
                    backgroundColor: const Color(0XFF262BC6),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const BabyCare()
                      )
                  );
                },
                child: const Text(
                  'Add more items',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                )),
          ),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Container(width: MediaQuery.of(context).size.width,height: 200,
          decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Color(0xffB9D5FF),
          image: DecorationImage(
            image: AssetImage('assets/1 6.png'),
            alignment: Alignment.centerRight,
            fit: BoxFit.contain,
          ),
    ),
    child: Padding(
    padding: const EdgeInsets.only(left: 10, top: 20),
    child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text(
    'UPTO',
    style: TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontSize: 25,
    ),
    ),
    Row(
      children: [
          Text(
          '25%',
          style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 30,
          ),
          ),
          Text(
            'OFF',
            style: TextStyle(
              color: Colors.white,fontWeight: FontWeight.bold
            ),
          ),

      ],
    ),
Text('Get 10 to 15 % cashback',style: TextStyle(
  color: Colors.black,
  fontWeight: FontWeight.bold,
  fontSize: 20,
),
    ),
      Text('On health products and\n medicines',style: TextStyle(
          color: Color(0XFF77787A),
      ),
      ),

    ]
    )
    )
          ),
        ),
         SizedBox(height: 20,),
         Padding(
           padding: const EdgeInsets.symmetric(horizontal: 15.0),
           child: Container(height: 30,width: MediaQuery.of(context).size.width,
             decoration: BoxDecoration( color: Colors.redAccent,
                  borderRadius: BorderRadius.all(Radius.circular(5))),
             child: Center(child: Text('Minimum cart value should be \$ 1500 to place order', style: TextStyle(color: Color(0xffFE0000)))),
           ),
         ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Total Items:',
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      TextSpan(
                        text: '7 Items',
                        style: TextStyle( color: Colors.black),
                      ),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: 'price:',
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      TextSpan(
                        text: '\$ 499',
                        style: TextStyle( color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 100,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    fixedSize:  Size(MediaQuery.of(context).size.width , 50),
                    backgroundColor: const Color(0XFF262BC6),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Select_PaymentMethod()
                      )
                  );
                },
                child: const Text(
                  'Checkout',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                )),
          ),
SizedBox(height: 30,),

        ]
    ),
      )
    );
  }
}
