import 'package:calne_heatlh_care1/Appointment%20&%20Payments/Book_Appointment.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class My_Bookings extends StatefulWidget {
  const My_Bookings({Key? key}) : super(key: key);

  @override
  State<My_Bookings> createState() => _My_BookingsState();
}

class _My_BookingsState extends State<My_Bookings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(height: 60),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Align(
              alignment: Alignment.topCenter,
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
                            context);
                      },
                      iconSize: 24,
                    ),
                  ),
                  const Text(
                    "Appointments",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 50,
                    width: 30,
                  )
                ],
              ),
            ),
          ),
           SizedBox(height: MediaQuery.of(context).size.height *0.09),
          Column(
            children: [
              Container(
                height: 200,
                width: 320,
                child: SvgPicture.asset("assets/no_booking.svg"),
              ),
              // SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text("You haven’t booked any appointment yet",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,color: Colors.black),),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 20),
                child: Text("Start by looking for doctors near you, read patient stories and book appointments",textAlign: TextAlign.center,style: TextStyle(fontSize: 12,color: Color(0xff6B6B6B)),),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  height: 35,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xff246BFD), Color(0xff262BC6)],
                      end: Alignment.topLeft,
                      begin: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Book_Appointment()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent, // Set the button's background color as transparent
                      elevation: 0, // Remove elevation/shadow
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: Text(
                      'Book Now',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ),
              ),

            ],
          ),
          // SizedBox(height: 100,width: 100,)
        ],
      ),
    );
  }
}
