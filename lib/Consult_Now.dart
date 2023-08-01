
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'Basic_Women_Health.dart';
import 'Stomach_Pain.dart';
import 'Tab.dart';
class ConsultNow extends StatefulWidget {
  const ConsultNow({Key? key}) : super(key: key);

  @override
  State<ConsultNow> createState() => _ConsultNowState();
}

class _ConsultNowState extends State<ConsultNow> {
  int currentSlideIndex = 0;
  bool _isFocused = false;
  bool _isChecked = false;
  bool isTextField1Selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(children: [
        SizedBox(
          height: 80,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                iconSize: 24,
              ),
              Text(
                'Consultations',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 50,width: 50,)
            ],
          ),
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
                hintText: 'Search Health Problem / Symptoms',
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
              "Most Common Symptoms",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),

        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SvgPicture.asset(
              'assets/Group 77.svg',
            ),
            InkWell(onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StomachPain())
              );
            },
              child: SvgPicture.asset(
                'assets/Group 79.svg',
              ),
            ),
            SvgPicture.asset(
              'assets/Group 81.svg',
            ),
            SvgPicture.asset(
              'assets/Group 83.svg',
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Covid', style: TextStyle(color: Color(0xff77787A))),
            Transform.translate(
              offset: Offset(10, 0),
              child: InkWell(onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => StomachPain())
                );
              },
                child: Text('Stomach\n  Pain           ',
                    style: TextStyle(color: Color(0xff77787A))),
              ),
            ),
            Transform.translate(
              offset: Offset(15, 0),
              child: Text('Head\nache      ',
                  style: TextStyle(color: Color(0xff77787A))),
            ),
            Transform.translate(
              offset: Offset(10, 0),
              child: Text('Sinusitis',
                  style: TextStyle(color: Color(0xff77787A))),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SvgPicture.asset(
              'assets/Group 85.svg',
            ),
            SvgPicture.asset(
              'assets/Group 87.svg',
            ),
            SvgPicture.asset(
              'assets/thermometer-svgrepo-com 1.svg',
            ),
            SvgPicture.asset(
              'assets/Group 91.svg',
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Veritgo', style: TextStyle(color: Color(0xff77787A))),
            Transform.translate(
              offset: Offset(10, 0),
              child: Text(' Cold &  \n Cough',
                  style: TextStyle(color: Color(0xff77787A))),
            ),
            Transform.translate(
              offset: Offset(15, 0),
              child: Text('Fever',
                  style: TextStyle(color: Color(0xff77787A))),
            ),
            Transform.translate(
              offset: Offset(10, 0),
              child: Text('  Constipat\n       ion',
                  style: TextStyle(color: Color(0xff77787A))),
            ),
          ],
        ),
        SizedBox(height: 20,),
        Divider(height: 1,color: Color(0XFFEDEFF3),thickness: 6,),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Common Health Issues",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),

      ]) ,
    );
  }
}
