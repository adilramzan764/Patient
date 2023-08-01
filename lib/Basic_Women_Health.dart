
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'Orders.dart';
import 'Profile_Page.dart';
import 'Test_Bookiings1.dart';

class BasicWomenHealth extends StatefulWidget {
  const BasicWomenHealth({Key? key}) : super(key: key);

  @override
  State<BasicWomenHealth> createState() => _BasicWomenHealthState();
}

class _BasicWomenHealthState extends State<BasicWomenHealth> {
  int currentSlideIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                children:  [
                  InkWell(onTap: () {
                    Navigator.pop(
                        context
                    );
                  },
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'Basic Women’s Health Checkup',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  SizedBox(),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Image.asset(
              'assets/download.png',
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
              height: 300,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Basic Women’s Health',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Transform.translate(
                  offset: Offset(35, 0),
                  child: Text(
                    '\$1499',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(10, 0),
                  child: Text(
                    '(Upto 50% off)',
                    style: TextStyle(
                      color: Colors.green,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Checkup',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Includes 85 tests',
                  style: TextStyle(color: Color(0xff77787A)),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  '  Ideal for individuals aged 15 to 40 years',
                  style: TextStyle(color: Color(0XFF77787A)),
                ),
                Transform.translate(
                    offset: Offset(15, 0),
                    child: SvgPicture.asset('assets/Group (1).svg',
                        color: Colors.black)),
                Text('Hafizabad',
                    style: TextStyle(
                      color: Colors.black,
                    ))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              height: 1,
              color: Color(0XFFDCDCDC),
              thickness: 6,
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Who should book this checkup?',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'This checkup is ideal for individuals between 15-40 years of age If you have a family history of or have been diagnosed with Intellectual Abnormality, Thyroid Disorder, Filarial Infestation, Kidney Disorder and Urinary Tract Infection, you should get this checkup done twice a year.',
                  style: TextStyle(color: Color(0XFF77787A)),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Provided By',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text
                ('Your tests will be conducted in one of the best and most trusted lab to ensure highest accuracy of your reports.'),
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              height: 1,
              color: Color(0XFFDCDCDC),
              thickness: 6,
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Includes 85 Tests',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ),
            ),
            SizedBox(height: 20,),
            ListTile(
              leading: Image.asset('assets/profile_logo 1.png',),
              // Icon or any widget to display on the left side
              title: Text('Iron Deficiency Profile',style: TextStyle( fontSize: 16,fontWeight: FontWeight.bold)),
              subtitle: Text('5 Tests',style: TextStyle(color: Color(0xff77787A))),
              // Title text
              trailing: Icon(Icons.arrow_forward_ios_rounded),
              // Icon or any widget to display on the right side
              onTap: () {
                // Functionality to perform when the ListTile is tapped
              },
            ),
            SizedBox(height: 10,),
            ListTile(
              leading: Image.asset('assets/profile_logo_brevQwn.png',),
              // Icon or any widget to display on the left side
              title: Text('Lipid Profile',style: TextStyle( fontSize: 16,fontWeight: FontWeight.bold)),
              subtitle: Text('9 Tests',style: TextStyle(color: Color(0xff77787A))),
              // Title text
              trailing: Icon(Icons.arrow_forward_ios_rounded),
              // Icon or any widget to display on the right side
              onTap: () {
                // Functionality to perform when the ListTile is tapped
              },
            ),
            SizedBox(height: 10,),
            ListTile(
              leading: Image.asset('assets/profile_logo (1).png',),
              // Icon or any widget to display on the left side
              title: Text('Liver Function Tests',style: TextStyle( fontSize: 16,fontWeight: FontWeight.bold)),
              subtitle: Text('12 Tests',style: TextStyle(color: Color(0xff77787A))),
              // Title text
              trailing: Icon(Icons.arrow_forward_ios_rounded),
              // Icon or any widget to display on the right side
              onTap: () {
                // Functionality to perform when the ListTile is tapped
              },
            ),
            SizedBox(height: 10,),
            ListTile(
              leading: Image.asset('assets/profile_logo (2).png',),
              // Icon or any widget to display on the left side
              title: Text('T3-T4-TSH',style: TextStyle( fontSize: 16, fontWeight: FontWeight.bold)),
              subtitle: Text('3 Tests',style: TextStyle(color: Color(0xff77787A))),
              // Title text
              trailing: Icon(Icons.arrow_forward_ios_rounded),
              // Icon or any widget to display on the right side
              onTap: () {
                // Functionality to perform when the ListTile is tapped
              },
            ),
            SizedBox(height: 10,),
            ListTile(
              leading: Image.asset('assets/profile_logo (3).png',),
              // Icon or any widget to display on the left side
              title: Text('Kidny/Renal Function Test',style: TextStyle( fontSize: 16,fontWeight: FontWeight.bold)),
              subtitle: Text('10 Tests',style: TextStyle(color: Color(0xff77787A))),
              // Title text
              trailing: Icon(Icons.arrow_forward_ios_rounded),
              // Icon or any widget to display on the right side
              onTap: () {
                // Functionality to perform when the ListTile is tapped
              },
            ),
            SizedBox(height: 10,),
            ListTile(
              leading: Image.asset('assets/profile_logo (4).png',),
              // Icon or any widget to display on the left side
              title: Text('Complete Blood Count',style: TextStyle( fontSize: 16,fontWeight: FontWeight.bold)),
              subtitle: Text('22 Tests',style: TextStyle(color: Color(0xff77787A))),
              // Title text
              trailing: Icon(Icons.arrow_forward_ios_rounded),
              // Icon or any widget to display on the right side
              onTap: () {
                // Functionality to perform when the ListTile is tapped
              },
            ),
            SizedBox(height: 10,),
            ListTile(
              leading: Image.asset('assets/default_test.png',),
              // Icon or any widget to display on the left side
              title: Text('Urine Complete Examination',style: TextStyle( fontSize: 16,fontWeight: FontWeight.bold)),
              subtitle: Text('20 Tests',style: TextStyle(color: Color(0xff77787A))),
              // Title text
              trailing: Icon(Icons.arrow_forward_ios_rounded),
              // Icon or any widget to display on the right side
              onTap: () {
                // Functionality to perform when the ListTile is tapped
              },
            ),
            SizedBox(height: 20,),
            Divider(height: 1,thickness: 6,color: Color(0XFFDCDCDC),),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Similar Packages',
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
                Image.asset('assets/nathan-dumlao-Wr3comVZJxU-unsplash 1 (3).png'),
                Image.asset('assets/nathan-dumlao-Wr3comVZJxU-unsplash 1 (4).png'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Working Women’s Health',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold, fontSize: 13),
                ),
                Transform.translate(
                  offset: Offset(-10, 0),
                  child: Text(
                    "Basic Women's Health",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 13),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Transform.translate(
                  offset: Offset(-46, 0),
                  child: Text(
                    'Checkup',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 13),
                  ),
                ),
                Transform.translate(
                  offset: Offset(-48, 0),
                  child: Text(
                    "Checkup",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 13),
                  ),
                )
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              Transform.translate(
                offset: Offset(-28, 0),
                child: Text(
                  'Includes 95 tests',
                  style: TextStyle(color: Colors.black, fontSize: 11),
                ),
              ),
              Transform.translate(
                offset: Offset(-30, 0),
                child: Text(
                  "Includes 27 tests",
                  style: TextStyle(color: Colors.black, fontSize: 11),
                ),
              )
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              Text(
                ' Ideal for individuals aged 18',
                style: TextStyle(color: Colors.black, fontSize: 11),
              ),
              Transform.translate(
                offset: Offset(-1, 0),
                child: Text(
                  "Ideal for individuals aged 05",
                  style: TextStyle(color: Colors.black, fontSize: 11),
                ),
              )
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              Transform.translate(
                offset: Offset(-43, 0),
                child: Text(
                  'to 55 years',
                  style: TextStyle(color: Colors.black, fontSize: 11),
                ),
              ),
              Transform.translate(
                offset: Offset(-46, 0),
                child: Text(
                  "to 15 years",
                  style: TextStyle(color: Colors.black, fontSize: 11),
                ),
              )
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              Transform.translate(
                offset: Offset(-23, 0),
                child: RichText(
                  text: TextSpan(
                    children: const [
                      TextSpan(
                        text: "\$1999",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: ' (Upto 30% off)',
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(-29, 0),
                child: RichText(
                  text: TextSpan(
                    children: const [
                      TextSpan(
                        text: "\$499",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: ' (Upto 30% off)',
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ]),
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

                  },
                  child: const Text(
                    'Call us to book test',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  )),
            ),
            SizedBox(height: 20,)

      ]
    )
      )
    );

  }
}
