import 'package:calne_heatlh_care1/Appointment%20&%20Payments/Doctor_Appointments.dart';
import 'package:calne_heatlh_care1/Appointment%20&%20Payments/Profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Doctor_Details extends StatefulWidget {
  const Doctor_Details({Key? key}) : super(key: key);

  @override
  State<Doctor_Details> createState() => _Doctor_DetailsState();
}

class _Doctor_DetailsState extends State<Doctor_Details> with SingleTickerProviderStateMixin{

  late TabController _tabController = TabController(length: 2, vsync: this);

  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(() {
      setState(() {
        _currentIndex = _tabController.index;
      });
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void _navigateToTab(int index) {
    setState(() {
      _currentIndex = index;
      _tabController.animateTo(index);
    });
  }
  final List<String> pics = [
    'assets/patients.svg',
    'assets/exp.svg',
    'assets/star.svg',
    'assets/rev.svg',
  ];
  final List<String> data = [
    '500+',
    '10+',
    '5.0',
    '5.376',
  ];
  final List<String> text = [
    'Patients',
    'Years Exp.',
    'Rating',
    'Reviews',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                  padding: const EdgeInsets.only(top: 60,left: 10,right: 10),
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
                        "Dr. Travis Westby",
                        style:
                        TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 25,
                        width: 30,
                        child: Icon(
                          Icons.favorite_border_outlined,
                          color:  Colors.black ,
                          size: 24.0,
                        ),
                      ),
                    ],
                  )),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),

                        blurRadius: 1,
                      )
                    ],
                  ),
                  height: 140,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                height: 100,
                                width: 110,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: DecorationImage(
                                    image: AssetImage('assets/doc3.svg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child:  Align(
                                  alignment: Alignment.topRight,
                                  child: Icon(
                                    CupertinoIcons.videocam_fill,
                                    color: Colors.green,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              flex: 3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  GestureDetector(
                                    onTap: (){
                                      // Navigator.push(
                                      //     context,
                                      //     MaterialPageRoute(builder: (context) => Payments(),
                                      //     ));
                                    },
                                    child: Text(
                                      'Dr. Travis Westby',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 4,),
                                  Divider(color: Colors.grey.withOpacity(0.2),thickness: 1,),
                                  SizedBox(height: 10,),
                                  Text("Cardiologists",style: TextStyle(fontSize: 12,color: Colors.grey),),
                                  SizedBox(height: 10,),
                                  Text("MBBS, MD - General Medicine",style: TextStyle(fontSize: 12,color: Colors.grey),),

                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10,),

                      ],
                    ),
                  ),
                ),
              ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: SizedBox(
            height: 130,
            // width: double.infinity,
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Data(
                  'assets/patients.svg',
                  '500+',
                  'Patients',
                ),

                Data(
                  'assets/exp.svg',
                  '10+',
                  'Years Exp.',
                ),

                Data(
                  'assets/star.svg',
                  '5.0',
                  'Rating',
                ),

                Data(
                  'assets/rev.svg',
                  '5376',
                  'Reviews',
                ),
              ],
            ),
          ),
        ),



              SizedBox(height: 20,),
              DefaultTabController(
                length: 2,
                child: SizedBox(
                    height: MediaQuery.of(context).size.height ,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child:  SizedBox(
                          height: 50,
                          child: Stack(
                            children: [
                              Container(
                                height: 45,
                                decoration: BoxDecoration(
                                  color: Color(0xffEEEEEE),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              TabBar(
                                padding: EdgeInsets.zero,
                                indicatorSize: TabBarIndicatorSize.label,
                                indicatorPadding: EdgeInsets.zero,
                                labelPadding: EdgeInsets.zero,
                                indicatorWeight: 4,
                                indicator: BoxDecoration(),
                                controller: _tabController,
                                onTap: (index) {
                                  _navigateToTab(index);
                                },
                                tabs: [
                                  Padding(
                                    padding: const EdgeInsets.all(7.0),
                                    child: Tab(
                                      child: Container(
                                        height: 35,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: _currentIndex == 0 ? Colors.blue : Colors.transparent,
                                          borderRadius: BorderRadius.circular(8),
                                        ),
                                        child: TextButton(
                                          onPressed: () {
                                            _navigateToTab(0);
                                          },
                                          child: Text(
                                            'Appointments',
                                            style: TextStyle(
                                              color: _currentIndex == 0 ? Colors.white : Colors.black,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(7.0),
                                    child: Tab(
                                      child: Container(
                                        width: double.infinity,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          color: _currentIndex == 1 ? Colors.blue : Colors.transparent,
                                          borderRadius: BorderRadius.circular(8),

                                        ),
                                        child: TextButton(
                                          onPressed: () {
                                            _navigateToTab(1);
                                          },
                                          child: Text(
                                            'Posts',
                                            style: TextStyle(
                                              color: _currentIndex == 1 ? Colors.white : Colors.black,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: TabBarView(
                          physics: const NeverScrollableScrollPhysics(),
                          controller: _tabController,
                          children:  [
                            Doctor_Appoitments(),
                            Profile()
                          ],
                        ),
                      )



                    ],
                  ),
                ),
              ),




            ],
          ),
        ),
      ),
    );
  }
  Widget Data(
      String pic,
      String data,
      String text,

      ) {


    return Expanded(
      child: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 65,
              width: 65,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xffD9E2F4),
              ),
              child: IconButton(
                onPressed: () {
                  // Add your button action here
                },
                icon: SvgPicture.asset(
                  pic,
                  // color: Color(0xff246BFD),
                  height: 35,
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              data,
              style: TextStyle(
                color: Color(0xff246BFD),
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              text,
              style: TextStyle(
                color: Color(0xff6E6D6E),
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


