
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'Cart_Screen.dart';
import 'Pharmacy.dart';

class BabyCare extends StatefulWidget {
  const BabyCare({Key? key}) : super(key: key);

  @override
  State<BabyCare> createState() => _BabyCareState();
}

class _BabyCareState extends State<BabyCare> {
  int currentSlideIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 80,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  'Baby Care',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SvgPicture.asset('assets/shopping-cart-2-line.svg')
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SvgPicture.asset('assets/Group (1).svg'),
              Transform.translate(
                  offset: Offset(-50, 0),
                  child: Text(
                    'Deliver to - Hafizabad',
                    style: TextStyle(color: Color(0XFF77787A)),
                  )),
              Text('Change', style: TextStyle(color: Colors.blue)),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Align(alignment: Alignment.centerLeft,
              child: Text(
                'All Products',
                style: TextStyle(color: Color(0xff303030),fontSize: 18,fontWeight: FontWeight.w500),
              ),
            ),
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
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            fixedSize: const Size(120, 40),
                            backgroundColor: Colors.white,
                            shape: const RoundedRectangleBorder(
                                side: BorderSide(color: Colors.blue),
                                borderRadius: BorderRadius.all(Radius.circular(10)))),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const CartScreen()));
                        },
                        child: const Text(
                          'Order Now',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.blue),
                        )),
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
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              fixedSize: const Size(120, 40),
                              backgroundColor: Colors.white,
                              shape: const RoundedRectangleBorder(
                                  side: BorderSide(color: Colors.blue),
                                  borderRadius: BorderRadius.all(Radius.circular(10)))),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Pharmacy()));
                          },
                          child: const Text(
                            'Order Now',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.blue),
                          )),
                    ],
                  ),
                ),
              ],
            ),
            // Subtitle text


          ),
          SizedBox(height: 20,),
          ListTile(
            leading: Image.asset(
                'assets/dexolac-2-refill-400gm 1.png'),
            // Icon or any widget to display on the left side
            title: Text('Dexolac Stage 2 Follow-up Formula Refill 500 g',style: TextStyle( fontSize: 16,)),
            // Title text
            subtitle: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [SizedBox(height: 10,),
                Text('\$19',
                    style: TextStyle(
                      color: Colors.blue,fontSize: 12,)),
                Transform.translate(offset: Offset(0,-10),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('(Upto 50% off)',
                          style: TextStyle(
                              color: Colors.green,fontSize: 12)),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              fixedSize: const Size(120, 40),
                              backgroundColor: Colors.white,
                              shape: const RoundedRectangleBorder(
                                  side: BorderSide(color: Colors.blue),
                                  borderRadius: BorderRadius.all(Radius.circular(10)))),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Pharmacy()));
                          },
                          child: const Text(
                            'Order Now',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.blue),
                          )),
                    ],
                  ),
                ),
              ],
            ),
            // Subtitle text


          ),
          SizedBox(height: 20,),
          ListTile(
            leading: Image.asset(
                'assets/placeholder_product 1.png'),
            // Icon or any widget to display on the left side
            title: Text('Product Not Available',style: TextStyle( fontSize: 16,)),
            // Title text
            subtitle: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [SizedBox(height: 10,),
                Text('\$free',
                    style: TextStyle(
                      color: Colors.blue,fontSize: 12,)),
                Transform.translate(offset: Offset(0,-10),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('(No discount)',
                          style: TextStyle(
                              color: Colors.green,fontSize: 12)),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              fixedSize: const Size(120, 40),
                              backgroundColor: Colors.white,
                              shape: const RoundedRectangleBorder(
                                  side: BorderSide(color: Colors.blue),
                                  borderRadius: BorderRadius.all(Radius.circular(10)))),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Pharmacy()));
                          },
                          child: const Text(
                            'Order Now',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.blue),
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          ListTile(
            leading: Image.asset(
                'assets/mamypoko-pants-xxxl 1.png'),
            // Icon or any widget to display on the left side
            title: Text('MamyPoko Pants (XXXL)',style: TextStyle( fontSize: 16,)),
            // Title text
            subtitle: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [SizedBox(height: 10,),
                Text('\$956',
                    style: TextStyle(
                      color: Colors.blue,fontSize: 12,)),
                Transform.translate(offset: Offset(0,-10),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('((Upto 50% off))',
                          style: TextStyle(
                              color: Colors.green,fontSize: 12)),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              fixedSize: const Size(120, 40),
                              backgroundColor: Colors.white,
                              shape: const RoundedRectangleBorder(
                                  side: BorderSide(color: Colors.blue),
                                  borderRadius: BorderRadius.all(Radius.circular(10)))),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Pharmacy()));
                          },
                          child: const Text(
                            'Order Now',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.blue),
                          )),
                    ],
                  ),
                ),
              ],
            ),
            // Subtitle text


          ),
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
        ]),
        ]
      )
    )
    );
  }
}
