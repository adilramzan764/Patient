
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'BabyCare.dart';
import 'Basic_Women_Health.dart';
import 'Orders.dart';

class Pharmacy extends StatefulWidget {
  const Pharmacy({Key? key}) : super(key: key);

  @override
  State<Pharmacy> createState() => _PharmacyState();
}

class _PharmacyState extends State<Pharmacy> {
  int currentSlideIndex = 0;
  bool _isFocused = false;
  bool _isChecked = false;
  bool isTextField1Selected = false;
  // final List<String> pics = [
  //   "assets/Screenshot 2022-08-03 at 10.50.png",
  //   "assets/bank-card-line.png",
  //   "assets/Banner 1 1 (1).png",
  // ];
  // final List<String> text = [
  //   'Covid Essentials',
  //   "Skin Care"
  //       "Baby Care"
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: [
        SizedBox(
          height: 80,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(
                  context
                );
              },
              child: Icon(Icons.arrow_back, size: 30, color: Colors.black),
            ),
            Text(
              'Pharmacy    ',
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SvgPicture.asset('assets/shopping-cart-2-line.svg')
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [BoxShadow(color: Colors.white)],
              color: Colors.blue,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              border: Border.all(color: Colors.blue, width: 1.5),
            ),
            height: 50,
            child: TextFormField(
              onTap: () {
                setState(() {
                  isTextField1Selected =
                      true; // Set the selection state of other text fields to false
                });
              },
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(width: 1.5, color: Colors.blue),
                ),
                fillColor:
                    isTextField1Selected ? Colors.blue : Color(0xffF6F7FA),
                filled: true,
                hintText: 'Search Medicine and Health Products',
                hintStyle: TextStyle(fontSize: 13, color: Color(0xffCECECE)),
                contentPadding: EdgeInsets.all(10),
                prefixIcon: Transform.scale(
                  scale: 0.6,
                  child: SvgPicture.asset('assets/search-2-line.svg'),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: Colors.blue, width: 1.5),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Shop Health Products By Categories',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset('assets/Frame 4.png'),
            Image.asset('assets/Frame 4 (1).png'),
            InkWell(onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const BabyCare()
                  )
              );
            },
                child: Image.asset('assets/Frame 4 (2).png')),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Transform.translate(
              offset: Offset(-11, 0),
              child: Text(
                'Covid Essentials',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 11),
              ),
            ),
            Transform.translate(
              offset: Offset(-15, 0),
              child: Text(
                'Skin Care',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 11),
              ),
            ),
            Transform.translate(
              offset: Offset(-5, 0),
              child: InkWell(onTap:() {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const BabyCare()
                    )
                );
              },
                child: Text(
                  'Baby Care',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 11),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset('assets/Frame 4 (3).png'),
            Image.asset('assets/Frame 3.png'),
            Image.asset('assets/Frame 4 (4).png'),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Transform.translate(
              offset: Offset(-11, 0),
              child: Text(
                '      Device &\n   Instruments',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 11),
              ),
            ),
            Transform.translate(
              offset: Offset(-15, 0),
              child: Text(
                '  Diabedes Care',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 11),
              ),
            ),
            Transform.translate(
              offset: Offset(-5, 0),
              child: Text(
                ' Pain Relief',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 11),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset('assets/Frame 4 (5).png'),
            Image.asset('assets/Frame 4 (6).png'),
            Image.asset('assets/Frame 3 (1).png'),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Text(
                  'Alternate',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 11),
                ),
                Text(
                  'Medicines',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 11),
                ),
              ],
            ),
            Text(
              '  Cough & Cold',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 11),
            ),
            Transform.translate(
              offset: Offset(-5, 0),
              child: Text(
                ' Family Care',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 11),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset('assets/Frame 3 (2).png'),
            Image.asset('assets/Frame 4 (7).png'),
            Image.asset('assets/Frame 4 (8).png'),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Transform.translate(
              offset: Offset(-11, 0),
              child: Text(
                'Health Conditions',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 11),
              ),
            ),
            Transform.translate(
              offset: Offset(-15, 0),
              child: Text(
                '  Heart health',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 11),
              ),
            ),
            Transform.translate(
              offset: Offset(-5, 0),
              child: Text(
                ' Personal Care',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 11),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset('assets/Frame 4 (9).png'),
            Image.asset('assets/Frame 4 (10).png'),
            Image.asset('assets/Frame 4 (8).png'),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Transform.translate(
              offset: Offset(-11, 0),
              child: Column(
                children: [
                  Text(
                    'Weight',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 11),
                  ),
                  Text(
                    'Management',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 11),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Text(
                  "WOMEN'S",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 11,
                  ),
                ),
                Text(
                  " CARE",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 11),
                ),
              ],
            ),
            Text(
              "Personel Care",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 11),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Align(alignment: Alignment.centerLeft,
            child: Text(
              'Popular Products',
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.black, fontSize: 16),
            ),
          ),
        ),
        SizedBox(height: 20,),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset('assets/zincovit-tablet 1.png'),
            Image.asset('assets/kids-pro-200gm-choco-flavour 1.png'),
            Image.asset('assets/supradyn-daily-tablet-15-s 1.png'),
          ],
        ),
   Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
     children: [
       Text("ZINCOVIT TABLET",style: TextStyle(fontWeight:FontWeight.bold,color: Colors.black,fontSize: 12)),
       Text("KIDS PRO 200GM",style: TextStyle(fontWeight:FontWeight.bold,color: Colors.black,fontSize: 12)),
       Text("SUPRADYN DAILY",style: TextStyle(fontWeight:FontWeight.bold,color: Colors.black,fontSize: 12)),
     ],
   ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("Covid_essent",style: TextStyle(fontWeight:FontWeight.bold,color: Colors.black,fontSize: 12)),
            Text("CHOCO FLAVOUR",style: TextStyle(fontWeight:FontWeight.bold,color: Colors.black,fontSize: 12)),
            Text("TABLET 15'S FOR",style: TextStyle(fontWeight:FontWeight.bold,color: Colors.black,fontSize: 12)),
          ],
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("als 15'S",style: TextStyle(fontWeight:FontWeight.bold,color: Colors.black,fontSize: 12)),
            Text("New",style: TextStyle(fontWeight:FontWeight.bold,color: Colors.black,fontSize: 12)),
            Text("Health",style: TextStyle(fontWeight:FontWeight.bold,color: Colors.black,fontSize: 12)),
          ],
        ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            RichText(
              text: TextSpan(
                children: const [
                  TextSpan(
                    text: "\$102.90",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: ' ((105 2% off))',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 11,
                    ),
                  ),

                ],
              ),
            ),
            RichText(
              text: TextSpan(
                children: const [
                  TextSpan(
                    text: "\$273.00",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: "",
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 11,
                    ),
                  ),

                ],
              ),
            ),
            RichText(
              text: TextSpan(
                children: const [
                  TextSpan(
                    text: "\$53.80 ",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: ' (54.9 2% off)',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 11,
                    ),
                  ),

                ],
              ),
            ),
      ]
          ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset('assets/neurobion-forte-tablet-immunity-booster-30-s 1.png'),
            Image.asset('assets/shelcal-500mg-tablet-15-s 1.png'),
            Image.asset('assets/tentex-royal-capsule-sexual-wellness-10-s 1.png'),
          ],
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("NEUROBION",style: TextStyle(fontWeight:FontWeight.bold,color: Colors.black,fontSize: 12)),
            Text("SHELCAL 500MG",style: TextStyle(fontWeight:FontWeight.bold,color: Colors.black,fontSize: 12)),
            Text("Himalaya",style: TextStyle(fontWeight:FontWeight.bold,color: Colors.black,fontSize: 12)),
          ],
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("FORTE TABLET",style: TextStyle(fontWeight:FontWeight.bold,color: Colors.black,fontSize: 12)),
            Text("TABLET 15'S FOR ",style: TextStyle(fontWeight:FontWeight.bold,color: Colors.black,fontSize: 12)),
            Text("TENTEX ROYAL",style: TextStyle(fontWeight:FontWeight.bold,color: Colors.black,fontSize: 12)),
          ],
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("30'S",style: TextStyle(fontWeight:FontWeight.bold,color: Colors.black,fontSize: 12)),
            Text("Health",style: TextStyle(fontWeight:FontWeight.bold,color: Colors.black,fontSize: 12)),
            Text("15'S",style: TextStyle(fontWeight:FontWeight.bold,color: Colors.black,fontSize: 12)),
          ],
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          RichText(
            text: TextSpan(
              children: const [
                TextSpan(
                  text: "\$34.10 ",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: ' ((34.12 2% off))',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 11,
                  ),
                ),

              ],
            ),
          ),
          RichText(
            text: TextSpan(
              children: const [
                TextSpan(
                  text: "\$273.00",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: "(118.11 2% Off)",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 11,
                  ),
                ),

              ],
            ),
          ),
          RichText(
            text: TextSpan(
              children: const [
                TextSpan(
                  text: "\$196.0 ",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: ' (200 2% off)',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 11,
                  ),
                ),

              ],
            ),
          ),
        ]
        ),
        SizedBox(
          height: 20,
        ),
        Divider(height: 1, color: Color(0xffDCDCDC), thickness: 6),
        SizedBox(
          height: 20,
        ),
        Column(
            children: [
              Container(
                height:180,width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: Color(0xffEDEFF3)),
                child: Transform.translate(offset: Offset(0,40),
                  child: Column(children: [
                    Text(
                      'Thousand of Happy Customers',
                      style: TextStyle(
                          color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text('“Good service for avoiding to stand in que'),
                    Text('for health checkup”'),
                    SizedBox(height: 10,),
                    Text(
                      'Lalita Hegde',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),),
                    CarouselSlider(
                        options: CarouselOptions(
                          height: 20,
                          viewportFraction: 1.0,
                          autoPlay: true,
                          aspectRatio: 16 / 9,
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enableInfiniteScroll: true,
                          onPageChanged: (index, reason) {
                            setState(() {
                              print(index);
                              currentSlideIndex = index; // Convert index to double
                            });
                          },
                        ),
                        items: []),
                    DotsIndicator(
                      position: double.parse(currentSlideIndex.toString()),
                      dotsCount: 3,
                      // Replace with the total number of dots

                      // Replace with the current position of the active dot (starts from 0)
                      decorator: DotsDecorator(
                        activeColor: Colors.blue,
                        // Replace with your desired color for active dot
                        activeSize: Size(9, 9),
                        // Replace with your desired size of active dot
                        activeShape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                5.0)), // Replace with your desired shape of active dot
                      ),
                    ),

                  ],
                  ),
                ),
              )
            ]
        ),

      ]
    )
        )
    );
  }
}
