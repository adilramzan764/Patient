import 'package:calne_heatlh_care1/Appointment%20&%20Payments/Select_Doctors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomBottomDialog {
  static final List<String> categories = [
    'Psoriasis / Scaly patches',
    'Skin Allergies',
    'Eczema / Itchy red skin',
    'Acne',
    'Vitiligo / White patches',
    'Hair loss',
    'Fungal Infection',
    'Dandruff problems',
  ];

  static void show(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double dialogHeight = screenHeight * 0.5; // Set the dialog height to half of the screen

    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (BuildContext context) {
        return GestureDetector(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Select_Doctors(), // Replace MyNewScreen with your desired screen widget
              ),);

          },
          child: ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            child: Container(
              height: dialogHeight, // Set the height to half of the screen
              child: ListView.builder(
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        onPrimary: Colors.black,
                        elevation: 0.1,
                        minimumSize: Size(double.infinity, 60),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Select_Doctors(), // Replace MyNewScreen with your desired screen widget
                          ),);

                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              categories[index],
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          Icon(
                            CupertinoIcons.right_chevron,
                            color: Color(0xffB5B8BC),
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
