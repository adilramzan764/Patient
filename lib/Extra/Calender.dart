import 'package:flutter/material.dart';

class TimeSlotSelectionPage extends StatefulWidget {
  @override
  _TimeSlotSelectionPageState createState() => _TimeSlotSelectionPageState();
}

class _TimeSlotSelectionPageState extends State<TimeSlotSelectionPage> {
  List<String> _selectedTimeSlots = [];

  List<String> availableTimeSlots = [
    '8:00 AM - 9:00 AM',
    '9:00 AM - 10:00 AM',
    '10:00 AM - 11:00 AM',
    '11:00 AM - 12:00 PM',
    '12:00 PM - 1:00 PM',
    '1:00 PM - 2:00 PM',
    // Add more time slots as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Time Slots'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Available Time Slots',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Wrap(
              spacing: 10.0,
              runSpacing: 10.0,
              children: availableTimeSlots.map((timeSlot) {
                final isSelected = _selectedTimeSlots.contains(timeSlot);
                return ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (isSelected) {
                        _selectedTimeSlots.remove(timeSlot);
                      } else {
                        _selectedTimeSlots.add(timeSlot);
                      }
                    });
                  },
                  style: ButtonStyle(
                    backgroundColor: isSelected
                        ? MaterialStateProperty.all(Colors.green)
                        : MaterialStateProperty.all(Colors.blue),
                  ),
                  child: Text(
                    timeSlot,
                    style: TextStyle(color: Colors.white),
                  ),
                );
              }).toList(),
            ),
            SizedBox(height: 20.0),
            Text(
              'Selected Time Slots',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: _selectedTimeSlots.map((timeSlot) {
                return Chip(
                  label: Text(timeSlot),
                  deleteIcon: Icon(Icons.cancel),
                  onDeleted: () {
                    setState(() {
                      _selectedTimeSlots.remove(timeSlot);
                    });
                  },
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
