
import 'package:calne_heatlh_care1/Cart_Screen.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';

import 'FavoritePharmacy.dart';
import 'Pharmacy.dart';
class HayderPharmacy extends StatefulWidget {
  const HayderPharmacy({Key? key}) : super(key: key);

  @override
  State<HayderPharmacy> createState() => _HayderPharmacyState();
}

class _HayderPharmacyState extends State<HayderPharmacy> {
  int currentSlideIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(height: 60,),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 120),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(onTap:(){
                  Navigator.pop(
                      context
                      );

                },

                    child: Icon(Icons.arrow_back)),
                Text('Pharmacy',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)
              ],
            ),
          ),
          SizedBox(height: 20,),
          Image.asset('assets/markus-winkler-pOu_UmkOG-0-unsplash 2 (6).png'),
          SizedBox(
            height: 20,
          ),
          ListTile(

              title: InkWell(onTap:() {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HayderPharmacy()
                    )
                );
              },
                child: Text('Hayder Pharmacy',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 20)),
              ),
              subtitle: Row(
                children: [Text('1753 Sold',style: TextStyle(color: Colors.blue,fontSize: 11)),
                  RatingBar.builder(
                    initialRating: 1,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 1,
                    itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => Transform.scale(scale: 0.6,
                      child: Icon(
                        Icons.star,
                        color: Colors.blue,
                      ),
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                  Transform.translate(offset: Offset(-12,0),
                    child: RichText(
                      text: TextSpan(
                        text: '1k+ Reviews',
                        style: TextStyle(
                            color: Colors.blue,fontSize: 11

                        ),
                        children: [
                        ],
                      ),
                    ),
                  )
                ],
              ),
              trailing: Image.asset(
                  'assets/heart-3-line.png',color: Colors.blue,)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Text
              ('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Our Products',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black, fontSize: 16),
                ),
                Transform.translate(offset: Offset(80,0),
                  child: Text(
                    'All',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                Icon(Icons.arrow_drop_down),
              ],
            ),
          ),
          SizedBox(height: 20,),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CartScreen()
                        )
                    );
                  },
                  child: Image.asset('assets/zincovit-tablet 1.png')),
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

        ]),
      ),
    );
  }
}
