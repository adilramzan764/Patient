import 'package:booking_calendar/booking_calendar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomBookingCalendar extends BookingCalendar {
  CustomBookingCalendar({
    // Pass any required parameters to the super constructor
    required BookingService bookingService,
    required  List<DateTimeRange> Function({required dynamic streamResult})
  convertStreamResultToDateTimeRanges,

    required Stream<dynamic>? Function(
        {required DateTime start, required DateTime end}) getBookingStream,
    required Future<dynamic> Function({required BookingService newBooking})uploadBooking,
    required List<DateTimeRange> pauseSlots,
     String? pauseSlotText,
    required bool hideBreakTime,
    required Widget loadingWidget,
    required Widget uploadingWidget,
    // Add any other parameters you need
  }) : super(
    bookingService: bookingService,
    convertStreamResultToDateTimeRanges: convertStreamResultToDateTimeRanges,
    getBookingStream: getBookingStream,
    uploadBooking: uploadBooking,
    pauseSlots: pauseSlots,
    pauseSlotText: pauseSlotText,
    hideBreakTime: hideBreakTime,
    loadingWidget: loadingWidget,
    uploadingWidget: uploadingWidget,
  );

  @override
  Widget buildHeader(BuildContext context) {
    return Container(
      // Custom header content here
      // You can add any desired widgets, styling, or layout
      child: Text(
        'Custom Header',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
