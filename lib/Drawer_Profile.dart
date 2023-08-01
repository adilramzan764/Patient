
import 'package:calne_heatlh_care1/My_Doctors.dart';
import 'package:calne_heatlh_care1/Orders.dart';
import 'package:calne_heatlh_care1/Payments.dart';
import 'package:calne_heatlh_care1/Profile/My_Profile.dart';
import 'package:calne_heatlh_care1/Settings/Settings.dart';
import 'package:calne_heatlh_care1/Tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'Appointments/Appointments.dart';
import 'FavoritePharmacy.dart';
import 'InsuranceCompany1.dart';
import 'MedicalRecord1.dart';
import 'Test_Bookings.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: SingleChildScrollView(
      child: Column(children: [
        SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 20,
        ),
        DecoratedBox(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Color(0xffCECECE)),
            ),
          ),
          child: ListTile(
            leading: Image.asset(
                'assets/iryna-makarchuk-MDt3FQMgvVo-unsplash 1.png'),
            // Icon or any widget to display on the left side
            title: Text('James Andrew',
                style: TextStyle(
                  fontSize: 16,
                )),
            // Title text
            subtitle: Text('Profile Completed 100%',
                style: TextStyle(color: Colors.green, fontSize: 10)),
            // Subtitle text
            trailing: Icon(Icons.arrow_forward_ios_rounded),
            // Icon or any widget to display on the right side
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => My_Profile()
                  )
              );
            },
          ),
        ),
        SizedBox(
          height: 20,
        ),
        ListTile(
          leading: SvgPicture.asset('assets/calendar-todo-line.svg',
              color: Colors.blue),
          // Icon or any widget to display on the left side
          title: Text('Appointments',
              style: TextStyle(
                fontSize: 16,
              )),
          // Title text
          trailing: Icon(Icons.arrow_forward_ios_rounded),
          // Icon or any widget to display on the right side
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Appointments()),
            );
          },
        ),
        SizedBox(
          height: 10,
        ),
        ListTile(
          leading:
              SvgPicture.asset('assets/flask-line.svg', color: Colors.blue),
          // Icon or any widget to display on the left side
          title: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TestBookings()));
              },
              child: Text('Test Bookings',
                  style: TextStyle(
                    fontSize: 16,
                  ))),
          // Title text
          trailing: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TestBookings()));
              },
              child: Icon(Icons.arrow_forward_ios_rounded)),
          // Icon or any widget to display on the right side
          onTap: () {
            // Functionality to perform when the ListTile is tapped
          },
        ),
        SizedBox(
          height: 10,
        ),
        ListTile(
          leading:
              SvgPicture.asset('assets/capsule-line.svg', color: Colors.blue),
          // Icon or any widget to display on the left side
          title: Text('Orders',
              style: TextStyle(
                fontSize: 16,
              )),
          // Title text
          trailing: Icon(Icons.arrow_forward_ios_rounded),
          // Icon or any widget to display on the right side
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Orders()
                )
            );
          },
        ),
        SizedBox(
          height: 10,
        ),
        ListTile(
          leading: SvgPicture.asset('assets/heart.svg', color: Colors.blue),
          // Icon or any widget to display on the left side
          title: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FavoritePharmacy()));
              },
              child: Text('Favorite Pharmacy',
                  style: TextStyle(
                    fontSize: 16,
                  ))),
          // Title text
          trailing: Icon(Icons.arrow_forward_ios_rounded),
          // Icon or any widget to display on the right side
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const FavoritePharmacy()));
          },
        ),
        SizedBox(
          height: 10,
        ),
        ListTile(
          leading: SvgPicture.asset('assets/question-answer-line.svg',
              color: Colors.blue),
          // Icon or any widget to display on the left side
          title: Text('Consultations',
              style: TextStyle(
                fontSize: 16,
              )),
          // Title text
          trailing: Icon(Icons.arrow_forward_ios_rounded),
          // Icon or any widget to display on the right side
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyTab()
                )
            );
          },
        ),
        SizedBox(
          height: 10,
        ),
        ListTile(
          leading: SvgPicture.asset('assets/stethoscope-line.svg',
              color: Colors.blue),
          // Icon or any widget to display on the left side
          title: Text('My Doctors',
              style: TextStyle(
                fontSize: 16,
              )),
          // Title text
          trailing: Icon(Icons.arrow_forward_ios_rounded),
          // Icon or any widget to display on the right side
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => My_Doctors()));          },
        ),
        SizedBox(
          height: 10,
        ),
        ListTile(
          leading: SvgPicture.asset('assets/health-book-line.svg',
              color: Colors.blue),
          // Icon or any widget to display on the left side
          title: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MedicalRecord1()));
              },
              child: Text('Medical Records',
                  style: TextStyle(
                    fontSize: 16,
                  ))),
          // Title text
          trailing: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MedicalRecord1()));
              },
              child: Icon(Icons.arrow_forward_ios_rounded)),
          // Icon or any widget to display on the right side
          onTap: () {
            // Functionality to perform when the ListTile is tapped
          },
        ),
        SizedBox(
          height: 10,
        ),
        ListTile(
          leading:
              SvgPicture.asset('assets/bank-card-line.svg', color: Colors.blue),
          // Icon or any widget to display on the left side
          title: Text('Payments',
              style: TextStyle(
                fontSize: 16,
              )),
          // Title text
          trailing: Icon(Icons.arrow_forward_ios_rounded),
          // Icon or any widget to display on the right side
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Payments()));
          },
        ),
        SizedBox(
          height: 10,
        ),
        ListTile(
          leading: SvgPicture.asset('assets/bank..-card-line.svg',
              color: Colors.blue),
          // Icon or any widget to display on the left side
          title: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const InsuranceCompany1()));
              },
              child: Text('Insurance Company',
                  style: TextStyle(
                    fontSize: 16,
                  ))),
          // Title text
          trailing: Icon(Icons.arrow_forward_ios_rounded),
          // Icon or any widget to display on the right side
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const InsuranceCompany1()));
          },
        ),
        SizedBox(
          height: 10,
        ),
        ListTile(
          leading: SvgPicture.asset('assets/question-line.svg',
              color: Color(0xffCECECE)),
          // Icon or any widget to display on the left side
          title: Text('Help Center',
              style: TextStyle(
                fontSize: 16,
              )),
          // Title text
          trailing: Icon(Icons.arrow_forward_ios_rounded),
          // Icon or any widget to display on the right side
          onTap: () {
            // Functionality to perform when the ListTile is tapped
          },
        ),
        SizedBox(
          height: 10,
        ),
        ListTile(
          leading: SvgPicture.asset('assets/settings-3-line.svg',
              color: Color(0xffCECECE)),
          // Icon or any widget to display on the left side
          title: Text('Settings',
              style: TextStyle(
                fontSize: 16,
              )),
          // Title text
          trailing: Icon(Icons.arrow_forward_ios_rounded),
          // Icon or any widget to display on the right side
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const Settings()));
          },
        ),
        SizedBox(
          height: 80,
        ),
        ListTile(
          leading: SvgPicture.asset(
            'assets/GroupX.svg',
          ),
          // Icon or any widget to display on the left side
          title: Text('Logout',
              style: TextStyle(
                fontSize: 16,
              )),
          // Title text
          trailing: Icon(Icons.arrow_forward_ios_rounded),
          // Icon or any widget to display on the right side
          onTap: () {
            // Functionality to perform when the ListTile is tapped
          },
        ),
      ]),
    ));
  }
}
