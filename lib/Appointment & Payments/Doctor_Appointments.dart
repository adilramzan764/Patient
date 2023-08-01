


import 'dart:ui';

import 'package:calne_heatlh_care1/Appointment%20&%20Payments/All_reviews.dart';
import 'package:calne_heatlh_care1/Appointment%20&%20Payments/Book_InClinic_Appointment.dart';
import 'package:calne_heatlh_care1/Appointment%20&%20Payments/Book_VideoConsult.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';



String _selectedTimeSlot='';
String video_selectedTimeSlot='';


final List<String> revpics = [
  'assets/m1.svg',
  'assets/m2.svg',

];
final List<String> revnames = [
  'Christopher Campbell',
  'Leilani Angel',

];
final List<String> reviews = [
  'Dr. Travis is very professional in his work and responsive. I have consulted and my problem is solved.',
  'Doctors who are very skilled and fast in service. My illness is cured, thank you very much!',

];

List<String> availableTimeSlots = [
  '05:00 AM',
  '10:00 AM',
  '10:30 AM',
  '12:30 PM',
  '02:00 PM',
  '06:30 PM',
  '10:00 PM',
  // Add more time slots as needed
];

List<String> video_availableTimeSlots = [
  '05:00 AM',
  '05:00 AM',
  '10:00 AM',
  '10:30 AM',
  '12:30 PM',
  '02:00 PM',
  '06:30 PM',
  '11:30 PM',
  '11:50 PM',
  // Add more time slots as needed
];
List<String> services = [
  'Cardic rehabilitation',
  'Heart rhythm monitoring',
  'General Cardiology consultation',
  'Stress testing',
  'Echocardiography',
];

List<String> past = [];

int total = 0 ;

class Doctor_Appoitments extends StatefulWidget {
  const Doctor_Appoitments({Key? key}) : super(key: key);

  @override
  State<Doctor_Appoitments> createState() => _Doctor_AppoitmentsState();
}

class _Doctor_AppoitmentsState extends State<Doctor_Appoitments> {

  int count_ispast=0;

  CalendarFormat _calendarFormat = CalendarFormat.week;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay=DateTime.now();
  String _selectedDate = DateFormat('EEE, MMMM d').format(DateTime.now());

  DateTime video_focusedDay = DateTime.now();
  DateTime? video_selectedDay=DateTime.now();
  String video_selectedDate = DateFormat('EEE, MMMM d').format(DateTime.now());

  void main() {
    initializeDateFormatting().then((_) {
      // Run your app
    });
  }

  bool isTimeSlotPast(String timeSlot) {
    final currentTime = DateTime.now();
    final timeFormat = DateFormat('hh:mm a');
    final formattedTimeSlot = timeFormat.parse(timeSlot);

    final currentFormattedTime = timeFormat.format(currentTime);
    final formattedCurrentTime = timeFormat.parse(currentFormattedTime);

    return formattedTimeSlot.isBefore(formattedCurrentTime);
  }


  @override
  Widget build(BuildContext context) {
    // print(_focusedDay);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Container(
              height: 470,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xffE3ECFF),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                children: [
                  Container(
                    height: 35,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10)),
                      color: Color(0xff6F90FF),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            'assets/hospital-fill.svg',
                            color: Colors.white,
                            height: 21,
                            width: 21,
                          ),
                          const SizedBox(width: 7,),
                          const Text('In-Clinic Appointment',style: TextStyle(color: Colors.white,fontSize: 14),),
                          const Expanded(
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text('\$200',style: TextStyle(color: Colors.white,fontSize: 14),),

                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Align(alignment: Alignment.centerLeft,
                        child: Text('Travis’s Medical Center',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Color(0xff000000)),)),
                        Expanded(
                          child: Align(alignment: Alignment.centerRight,
                          child: Text('2 more clinic',style: TextStyle(decoration: TextDecoration.underline,color: Color(0xff2567FA),fontSize: 14),),),
                        )
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Align(alignment: Alignment.centerLeft,
                        child: Text('RT Nagar',style: TextStyle(fontSize: 14,color: Color(0xff000000)),)),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10.0,top: 10),
                    child: Align(alignment: Alignment.centerLeft,
                        child: Text('30 mins or less wait time',style: TextStyle(fontSize: 14,color: Color(0xff77787A)),)),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 4),
                    child: Divider(thickness: 0.5,color: Color(0xff77787A),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Align(alignment: Alignment.centerLeft,
                    child:
                      Text(
                        '$_selectedDate',
                        style: const TextStyle(fontSize: 24,color: Color(0xff0C3469),fontWeight: FontWeight.bold),
                      ),),
                  ),
                  Padding(padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                  child: TableCalendar(
                    availableCalendarFormats: const {
                      CalendarFormat.week: 'Week', // Only show the week format
                    },
                    availableGestures: AvailableGestures.horizontalSwipe,

                    calendarFormat: _calendarFormat,
                    firstDay: DateTime(2023),
                    lastDay: DateTime(2024),
                    focusedDay: _focusedDay,
                    startingDayOfWeek: StartingDayOfWeek.tuesday,
                    headerVisible: false,
                    daysOfWeekStyle: const DaysOfWeekStyle(weekdayStyle: TextStyle(color: Colors.black),weekendStyle: TextStyle(color: Colors.black)),


                    selectedDayPredicate: (day) {
                      return isSameDay(_selectedDay, day);
                    },
                    onDaySelected: (selectedDay, focusedDay) {
                      setState(() {
                        _selectedDay = selectedDay;
                        _focusedDay = focusedDay;
                        _selectedDate = DateFormat('EEE, MMMM d').format(selectedDay);
                      });
                    },
                    onFormatChanged: (format) {
                      setState(() {
                        _calendarFormat = format;
                      });
                    },

                    calendarStyle: const CalendarStyle(
                      defaultTextStyle: TextStyle(color: Colors.black),
                      weekendTextStyle: TextStyle(color: Colors.black),
                      isTodayHighlighted: false,
                    ),
                    calendarBuilders: CalendarBuilders(
                      selectedBuilder: (context, date, events) {
                        return Container(
                          margin: const EdgeInsets.all(4.0),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [Color(0xff246BFD), Color(0xff262BC6)],
                              end: Alignment.topLeft,
                              begin: Alignment.bottomRight,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Text(
                            date.day.toString(),
                            style: const TextStyle(color: Colors.white),
                          ),
                        );
                      },

                    ),
                  ),),
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '6 Slots available',
                        style: TextStyle(fontSize: 16.0,color: Color(0xff2567FA)),
                      ),
                    ),
                  ),

                  Expanded(
                    // height: 100,
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 20.0,
                        mainAxisSpacing: 10.0,

                        childAspectRatio: (70 / 25),

                      ),
                      itemCount: availableTimeSlots.length,
                      physics: NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      itemBuilder: (context, index) {
                        final timeSlot = availableTimeSlots[index];
                        final isSelected = _selectedTimeSlot == timeSlot;
                        final isPastTime = isTimeSlotPast(timeSlot);

                        return ElevatedButton(
                          onPressed: isPastTime
                              ? null // Disable button for time slots in the past
                              : () {
                            setState(() {
                              if (isSelected) {
                                _selectedTimeSlot = ' ';
                              } else {
                                _selectedTimeSlot = timeSlot;
                              }
                            });
                          },
                          style: ButtonStyle(
                            // minimumSize: MaterialStateProperty.all(Size(30, 20)),
                            side: MaterialStateProperty.all<BorderSide>(
                              BorderSide(
                                color: isSelected ? Colors.blue : isPastTime ? Colors.grey : Colors.black,
                                width: 1.0,
                              ),
                            ),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                            backgroundColor: isSelected
                                ? MaterialStateProperty.all(const Color(0xff246BFD))
                                : MaterialStateProperty.all(const Color(0xffE3ECFF)),
                          ),
                          child: Text(
                            timeSlot,
                            style: TextStyle(
                              color: isSelected ? Colors.white : isPastTime ? Colors.grey : Colors.black,fontSize: 11
                            ),
                          ),
                        );
                      },
                    ),
                  )




                ],
              ),

            ),),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Container(
                  height: 5,child: const Divider(thickness: 5,color: Color(0xffEDEFF3),indent: 2,)),
            ),

            Padding(padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
              child: Container(
                height: 380,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: const Color(0xffE3ECFF),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  children: [
                    Container(
                      height: 35,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10)),
                        color: Color(0xff6F90FF),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          children: [
                            Icon(
                              CupertinoIcons.videocam_fill,
                              color: Colors.white,
                              size: 24,
                            ),
                            SizedBox(width: 7,),
                            Text('Video Consultation',style: TextStyle(color: Colors.white,fontSize: 14),),
                            Expanded(
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Text('\$200',style: TextStyle(color: Colors.white,fontSize: 14),),

                              ),
                            )
                          ],
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 10),
                      child: Align(alignment: Alignment.centerLeft,
                        child:
                        Text(
                          '$video_selectedDate',
                          style: const TextStyle(fontSize: 24,color: Color(0xff0C3469),fontWeight: FontWeight.bold),
                        ),),
                    ),
                    Padding(padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                      child: TableCalendar(
                        availableCalendarFormats: const {
                          CalendarFormat.week: 'Week', // Only show the week format
                        },
                        availableGestures: AvailableGestures.horizontalSwipe,

                        calendarFormat: _calendarFormat,
                        firstDay: DateTime(2023),
                        lastDay: DateTime(2024),
                        focusedDay: video_focusedDay,
                        startingDayOfWeek: StartingDayOfWeek.tuesday,
                        headerVisible: false,
                        daysOfWeekStyle: const DaysOfWeekStyle(weekdayStyle: TextStyle(color: Colors.black),weekendStyle: TextStyle(color: Colors.black)),


                        selectedDayPredicate: (day) {
                          return isSameDay(video_selectedDay, day);
                        },
                        onDaySelected: (selectedDay, focusedDay) {
                          setState(() {
                            video_selectedDay = selectedDay;
                            video_focusedDay = focusedDay;
                            video_selectedDate = DateFormat('EEE, MMMM d').format(selectedDay);
                          });
                        },
                        onFormatChanged: (format) {
                          setState(() {
                            _calendarFormat = format;
                          });
                        },

                        calendarStyle: const CalendarStyle(
                          defaultTextStyle: TextStyle(color: Colors.black),
                          weekendTextStyle: TextStyle(color: Colors.black),
                          isTodayHighlighted: false,
                        ),
                        calendarBuilders: CalendarBuilders(
                          selectedBuilder: (context, date, events) {
                            return Container(
                              margin: const EdgeInsets.all(4.0),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  colors: [Color(0xff246BFD), Color(0xff262BC6)],
                                  end: Alignment.topLeft,
                                  begin: Alignment.bottomRight,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Text(
                                date.day.toString(),
                                style: const TextStyle(color: Colors.white),
                              ),
                            );
                          },

                        ),
                      ),),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                '6 Slots available',
                          style: const TextStyle(fontSize: 16.0,color: Color(0xff2567FA)),
                        ),
                      ),
                    ),

                    Flexible(
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 20.0,
                          mainAxisSpacing: 10.0,

                          childAspectRatio: (70 / 25),
                        ),
                        itemCount: video_availableTimeSlots.length,
                        physics: NeverScrollableScrollPhysics(),
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        itemBuilder: (context, index) {
                          final timeSlot = video_availableTimeSlots[index];
                          final isSelectedvideo = video_selectedTimeSlot == timeSlot;
                          final VideoisPastTime = isTimeSlotPast(timeSlot);

                          return ElevatedButton(
                            onPressed: VideoisPastTime
                                ? null // Disable button for time slots in the past
                                : () {
                              setState(() {
                                if (isSelectedvideo) {
                                  video_selectedTimeSlot = ' ';
                                } else {
                                  video_selectedTimeSlot = timeSlot;
                                }
                              });
                            },
                            style: ButtonStyle(
                              side: MaterialStateProperty.all<BorderSide>(
                                BorderSide(
                                  color: isSelectedvideo ? Colors.blue : VideoisPastTime ? Colors.grey : Colors.black,
                                  width: 1.0,
                                ),
                              ),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                              ),
                              backgroundColor: isSelectedvideo
                                  ? MaterialStateProperty.all(const Color(0xff246BFD))
                                  : MaterialStateProperty.all(const Color(0xffE3ECFF)),
                            ),
                            child: Text(
                              timeSlot,
                              style: TextStyle(
                                color: isSelectedvideo ? Colors.white : VideoisPastTime ? Colors.grey : Colors.black,fontSize: 11
                              ),
                            ),
                          );
                        },
                      ),
                    )





                  ],
                ),

              ),),

            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Container(
                  height: 5,child: const Divider(thickness: 5,color: Color(0xffEDEFF3),indent: 2,)),
            ),
            const Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Align(alignment: Alignment.centerLeft,
            child: Text('Clinic Details',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Color(0xff000000)),),),),

            const Padding(padding: EdgeInsets.symmetric(horizontal: 20),
              child: Align(alignment: Alignment.centerLeft,
                child: Text('Travis’s Medical Center',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Color(0xff000000)),),),),

            const Padding(padding: EdgeInsets.only(left: 20,top: 10),
              child: Align(alignment: Alignment.centerLeft,
                child: Text('RT Nagar',style: TextStyle(fontSize: 13,color: Color(0xff77787A)),),),),

            const Padding(padding: EdgeInsets.only(left: 20,top: 6),
              child: Align(alignment: Alignment.centerLeft,
                child: Text('In-Clinic fee \$200',style: TextStyle(fontSize: 13,color: Color(0xff77787A)),),),),

            const Padding(padding: EdgeInsets.only(left: 20,top: 10),
              child: Align(alignment: Alignment.centerLeft,
                child: Text('Timings',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Color(0xff000000)),),),),

            const Padding(padding: EdgeInsets.only(left: 20,top: 6),
              child: Align(alignment: Alignment.centerLeft,
                child: Text('Monday - Friday, 08:00 AM - 20:00 PM',style: TextStyle(fontSize: 13,color: Color(0xff000000)),),),),

            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Container(
                  height: 5,child: const Divider(thickness: 5,color: Color(0xffEDEFF3),indent: 2,)),
            ),
SizedBox(height: 10,),
            const Padding(padding: EdgeInsets.symmetric(horizontal: 20,),
              child: Align(alignment: Alignment.centerLeft,
                child: Text('Services by Dr. Travis Westby',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Color(0xff000000)),),),),

            SizedBox(height: 155,
            child: ListView.builder(itemCount: services.length,physics: const NeverScrollableScrollPhysics(),itemBuilder: (context,index){

              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 5),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Icon(
                        Icons.circle,
                        color: Colors.green,
                        size: 12,
                      ),
                    ),
                    // SizedBox(width: 10,),
                    Padding(padding: const EdgeInsets.only(left: 10,top: 6),
                      child: Text(services[index],style: const TextStyle(fontSize: 14,color: Color(0xff77787A)),textAlign: TextAlign.center,),),

                  ],
                ),
              );
            }),),

            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Container(
                  height: 2,child: const Divider(thickness: 5,color: Color(0xffEDEFF3),indent: 2,)),
            ),
            const SizedBox(height: 8,),

            const Padding(padding: EdgeInsets.only(left: 20,top: 6,bottom: 10),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Show all services',style: TextStyle(fontSize: 14,color: Color(0xff246BFD),fontWeight: FontWeight.bold),)),),


            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Container(
                  height: 2,child: const Divider(thickness: 5,color: Color(0xffEDEFF3),indent: 2,)),
            ),

            const Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Align(alignment: Alignment.centerLeft,
                child: Text('Location',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Color(0xff000000)),),),),

            Container(
              height: 200,
              width: double.infinity,
              child: Image.asset('assets/location.svg',fit: BoxFit.cover,),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: Container(
                  height: 2,child: const Divider(thickness: 5,color: Color(0xffEDEFF3),indent: 2,)),
            ),

            const Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
              child: Align(alignment: Alignment.centerLeft,
                child: Text('Clinic Photos',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Color(0xff000000)),),),),



            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildRoundedImage('assets/clinic1.svg'),
                  SizedBox(width: 8,),
                  _buildRoundedImage('assets/clinic2.svg'),
                  SizedBox(width: 8,),

                  Expanded(
                    child: Container(
                      // width: 100,
                      height: 100, // Adjust the height as needed
                      // margin: EdgeInsets.all(8), // Adjust the margin and spacing as needed
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Stack(
                          children: [
                            Image.asset(
                              'assets/clinic3.svg',
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height: double.infinity,
                            ),
                            Positioned.fill(
                              child: Container(
                                color: Colors.black54, // Adjust the opacity as needed
                              ),
                            ),
                            const Align(
                              alignment: Alignment.center,
                              child: Text('+3 more photos',style: TextStyle(fontSize: 14,color: Color(0xffFFFFFF)),),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),


                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Container(
                  height: 2,child: const Divider(thickness: 5,color: Color(0xffEDEFF3),indent: 2,)),
            ),

            const Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Align(alignment: Alignment.centerLeft,
                child: Text('More about Dr. Travis Westby',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Color(0xff000000)),),),),


            Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
              child:  RichText(
                text: const TextSpan(
                  text: 'Dr. Travis Westby is the top most Cardiologist specialist in Alka Hospital. He achieved several awards for his  wonderful contribution in medical field. He is available for private con... ',
                  style: TextStyle(color: Color(0xff77787A),fontSize: 16),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'See more',
                      style: TextStyle(
                          color: Color(0xff246BFD),
                          fontSize: 16

                      ),
                    ),

                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Container(
                  height: 2,child: const Divider(thickness: 5,color: Color(0xffEDEFF3),indent: 2,)),
            ),

            Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Row(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Reviews',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => All_Reviews(),
                          ),
                        );
                      },
                      child: Text(
                        'See All',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xff246BFD),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
            ),

            SizedBox(
              height: 300,
              child: ListView.builder(
                itemCount: 2,
                physics: const NeverScrollableScrollPhysics(),// Replace with the actual number of items in the list
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage: AssetImage(revpics[index]), // Replace with the actual image path
                              ),
                              const SizedBox(width: 10),
                              Text(
                                revnames[index],
                                style: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                              ),

                              Expanded(
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: ElevatedButton.icon(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        side: const BorderSide(color: Colors.blue)

                                      ),
                                      primary: Colors.white,

                                    ),
                                    icon: const Icon(Icons.star, color: Colors.blue,size: 15,),
                                    label: const Text('5', style: TextStyle(color: Colors.blue)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Align(alignment: Alignment.centerLeft,
                              child: Text(reviews[index],style: const TextStyle(fontSize: 14,color: Color(0xff77787A)),),),),
                        ],
                      ),
                    ),
                  );
                },
              )

            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
              child: Row(
                children: [

                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                          color: const Color(0xff31B802),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                builder: (context) => Book_VideoConsult()));
                          },
                          style: ElevatedButton.styleFrom(
                            primary: const Color(0xff31B802),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                CupertinoIcons.videocam_fill,
                                color: Colors.white,
                                size: 21,
                              ),
                              SizedBox(width: 2),
                              Text(
                                'Book Video Consult',
                                style: TextStyle(color: Colors.white, fontSize: 11),
                              ),
                            ],
                          ),
                        ),
                      ),

                    ),
                  // if (docnames[index] != 'Dr. Travis Westaby' &&
                  //     docnames[index] != 'Dr. Beckett Calger')
                  const SizedBox(width: 5,),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [Color(0xff246BFD), Color(0xff262BC6)],
                          end: Alignment.topLeft,
                          begin: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => In_clinic_Appointment(), // Replace MyNewScreen with your desired screen widget
                            ),);
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.transparent,
                          onPrimary: Colors.transparent,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/hospital-fill.svg',
                              color: Colors.white,
                              // height: 21,
                              // width: 21,
                            ),
                            const SizedBox(width: 5),
                            const Text(
                              'Book Clinic Visit',
                              style: TextStyle(color: Colors.white, fontSize: 11),
                            ),
                          ],
                        ),
                      ),
                    ),

                  ),
                ],
              ),
            ),
            const SizedBox(height: 10,)





          ],
        ),
      ),
    );
  }
}

Widget _buildRoundedImage(String imagePath) {
  // final screenWidth = MediaQuery.of(context).size.width;
  // final containerWidth = (screenWidth - 32) / 3;
  return Expanded(
    child: Container(
      // width: 100,
      height: 100, // adjust the height to fit your requirements
      // margin: EdgeInsets.all(8), // adjust the margin as needed
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8), // adjust the border radius as needed
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),

      ),

    ),
  );
}