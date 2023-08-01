
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'AddCart.dart';
import 'Pharmacy.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List Salvos = [
    {'title': '100 MI', 'isActive': false},
    {'title': '250 MI', 'isActive': false},
    {'title': '500 MI', 'isActive': false},
    {'title': '800 MI', 'isActive': false},
    {'title': '1000 MI', 'isActive': false},
  ];

  void changeState(Map<String, dynamic> selectedItem) {
    setState(() {
      for (var item in Salvos) {
        item['isActive'] = (item == selectedItem);
      }
    });
  }

  int currentSlideIndex = 0;

  bool _isFocused = false;
  bool _isChecked = false;
  bool isTextField1Selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column
          (children: [
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
              SvgPicture.asset('assets/shopping-cart-2-line.svg')
            ],
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
              Text('Change',
                  style:
                      TextStyle(color: Colors.blue, fontWeight: FontWeight.bold)),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Transform.translate(
              offset: Offset(-15, 0),
              child: CarouselSlider(
                  options: CarouselOptions(
                    height: MediaQuery.of(context).size.height / 4,
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
                  items: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset(
                        'assets/himalaya-baby-powder-50gm 2.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset(
                        'assets/himalaya-baby-powder-50gm 2.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset(
                        'assets/himalaya-baby-powder-50gm 2.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ]),
            ),
          ),
          Transform.translate(
            offset: Offset(-25, 5),
            child: DotsIndicator(
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
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            title: Text('Himalaya Baby Powder 50 g',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: RichText(
                  text: TextSpan(children: <TextSpan>[
                TextSpan(
                    text: '\$499',
                    style: TextStyle(color: Colors.green, fontSize: 11)),
                TextSpan(
                    text: 'Inclusive of all taxes',
                    style: TextStyle(color: Color(0xff77787A), fontSize: 11)),
                TextSpan(
                    text: '(Upto 50% off)',
                    style: TextStyle(color: Colors.green, fontSize: 11))
              ])),
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset
                ('assets/markus-winkler-pOu_UmkOG-0-unsplash 1.png'),
              Transform.translate(offset: Offset(-20,0),
                  child: Text('HAYDER PHARMACY')),
              ElevatedButton(
                       style: ElevatedButton.styleFrom(
                           fixedSize: const Size(130, 40),
                          backgroundColor: Colors.white,
                          shape: const RoundedRectangleBorder(
                              side: BorderSide(color: Colors.blue),
                              borderRadius: BorderRadius.all(Radius.circular(10)))),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AddCart()));
                      },
                      child: const Text(
                        'Add to Cart',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.blue),
                      )),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Align(alignment: Alignment.centerLeft,
              child: Text(
                'Pack Size',
                style: TextStyle(color: Color(0xff303030),fontSize: 18,fontWeight: FontWeight.w500),
              ),
            ),
          ),
          SizedBox(height: 10,),
          SingleChildScrollView(scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Wrap(
                      direction: Axis.horizontal,
                      spacing: 10.0,
                      runSpacing: 10.0,
                      children: Salvos.map((option) => new Container(
                          child: InkWell(
                              onTap: () {
                                changeState(option);
                              },
                              child: Container(
                                  decoration: BoxDecoration(
                                    color: option['isActive']
                                        ? Colors.blue
                                        : Colors.white,
                                    border: Border.all(
                                        color: Color(0xff868e96), width: 1.3),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  height: 40,
                                  padding: EdgeInsets.all(10),
                                  child: Text('${option['title']}',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          color: option['isActive']
                                              ? Colors.white
                                              : Color(0xff868e96))))))).toList()),
                ],
              ),
            ),
          ),


          SizedBox(height: 20,),
          Divider(height: 1,color: Color(0XFFEDEFF3),thickness: 6,),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Align(alignment: Alignment.centerLeft,
              child: Text(
                'Description',
                style: TextStyle(color: Color(0xff303030),fontSize: 18,fontWeight: FontWeight.w500),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text('Himalaya Baby Powder is good for the babies. It is safe and effective as it has all the natural herbal actives. It helps in managing the body odour caused due to excess sweat. It helps in nourishing, gives protection, moisturizes the skin. It also helps in keeping the baby dry all day and also has astringent and antipersistent properties.',style: TextStyle(color: Color(0XFF77787A),fontSize: 12),),
          ),
          SizedBox(height: 20,),
          Divider(height: 1,color: Color(0XFFEDEFF3),thickness: 6,),
          SizedBox(
            height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Align(alignment: Alignment.centerLeft,
              child: Text(
                'Description',
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Transform.translate(offset: Offset(2,0),
                child: Icon
                  (Icons.circle,size: 12),
              ),
              Transform.translate(offset: Offset(-30,0),
                  child: Text('Himalaya Baby Powder contains herbal actives.',style: TextStyle(fontSize: 12),))
            ],
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon
                  (Icons.circle,size: 12),
                Column(
                  children: [
                    Text('It is free from synthetic colours, parabens and phthalates.',style: TextStyle(fontSize: 11),),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Transform.translate(offset: Offset(14,0),
                child: Icon
                  (Icons.circle,size: 12),
              ),
              Text('It helps in managing the body odour due to excessive sweat.',style: TextStyle(fontSize: 11),)
            ],
          ),
          SizedBox(height: 20,),
          Divider(height: 1,color: Color(0XFFEDEFF3),thickness: 6,),
          SizedBox(
            height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Align(alignment: Alignment.centerLeft,
              child: Text(
                'How to Use',
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text
              ('After giving a bath to your baby, gently apply this powder on the areas like face, elbows and knees. It is better not to apply near the area of eyes.',style: TextStyle(color: Color(0XFF77787A),fontSize: 12),),
          ),
          SizedBox(height: 20,),
          Divider(height: 1,color: Color(0XFFEDEFF3),thickness: 6,),
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


        ]),
      ),
    );
  }
}
