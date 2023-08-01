import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Popup1{
  static void popup1(BuildContext context){
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius:
                BorderRadius.circular(20)),
            backgroundColor: Colors.white,
            child: LayoutBuilder(builder:
                (BuildContext context,
                BoxConstraints constraints) {
              return Container(
                width: constraints.maxWidth * 0.7,
                // Adjust the width as needed
                height: constraints.maxHeight * 0.68,
                child: Column(
                  // mainAxisAlignment:
                  // MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          top: 10, left: 5),
                      child: Align(
                          alignment:
                          Alignment.centerLeft,
                          child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.close_sharp,
                              color: Color(0xff09121F),size: 20,
                            ),
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: 5, left: 10,right: 10),
                      child: Align(
                          alignment:
                          Alignment.centerLeft,
                          child: Text(
                            "Select a Patient",
                            style: TextStyle(
                                fontSize: 14,
                                color:
                                Color(0xff000000),
                                fontWeight:
                                FontWeight.bold),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(

                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                          BorderRadius.circular(8.0),
                          border: Border.all(
                            color: Color(0xff000000),
                            width: 1.0,
                          ),
                        ),
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'James Andrew',
                                style: TextStyle(
                                    fontSize: 15.0,fontWeight: FontWeight.bold,color: Colors.black),
                              ),
                            ),
                            SizedBox(height: 7.0),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                '+923123456789',
                                style: TextStyle(
                                    fontSize: 13.0,color: Color(0xff000000)),
                              ),
                            ),
                            SizedBox(height: 7.0),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'James_andrew@gmail.com',
                                style: TextStyle(
                                    fontSize: 13.0,color: Color(0xff535353)),
                              ),
                            ),
                            SizedBox(height: 10.0),
                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment
                                  .spaceBetween,
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    height: 30,
                                    // width: double.infinity,
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
                                        // Navigator.push(
                                        //   context,
                                        //   MaterialPageRoute(builder: (context) => Book_Appointment()),
                                        // );
                                      },
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.transparent, // Set the button's background color as transparent
                                        elevation: 0, // Remove elevation/shadow
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(8.0),
                                        ),
                                      ),
                                      child: Text(
                                        'Edit',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 20,height: 20,),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    height: 30,
                                    // width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8.0),
                                      border: Border.all(color: Color(0xff255FF3),width: 2),
                                    ),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        // Navigator.push(
                                        //   context,
                                        //   MaterialPageRoute(builder: (context) => Book_Appointment()),
                                        // );
                                      },
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.transparent, // Set the button's background color as transparent
                                        elevation: 0, // Remove elevation/shadow
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(8.0),
                                        ),
                                      ),
                                      child: Text(
                                        'Select',
                                        style: TextStyle(
                                          color: Color(0xff255FF3),fontWeight: FontWeight.bold,
                                          fontSize: 12,
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
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0,right: 10,top: 5),
                      child: Container(

                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                          BorderRadius.circular(8.0),
                          border: Border.all(
                            color: Color(0xff000000),
                            width: 1.0,
                          ),
                        ),
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Usama Rasheed',
                                style: TextStyle(
                                    fontSize: 15.0,fontWeight: FontWeight.bold,color: Colors.black),
                              ),
                            ),
                            SizedBox(height: 7.0),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                '+923077252785',
                                style: TextStyle(
                                    fontSize: 13.0,color: Color(0xff000000)),
                              ),
                            ),
                            SizedBox(height: 7.0),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'usama_rasheed123@gmail.com',
                                style: TextStyle(
                                    fontSize: 13.0,color: Color(0xff535353)),
                              ),
                            ),
                            SizedBox(height: 10.0),
                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment
                                  .spaceBetween,
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    height: 30,
                                    // width: double.infinity,
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
                                        // popup2(context);
                                      },
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.transparent, // Set the button's background color as transparent
                                        elevation: 0, // Remove elevation/shadow
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(8.0),
                                        ),
                                      ),
                                      child: Text(
                                        'Edit',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 20,height: 20,),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    height: 30,
                                    // width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8.0),
                                      border: Border.all(color: Color(0xff255FF3),width: 2),
                                    ),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        // Navigator.push(
                                        //   context,
                                        //   MaterialPageRoute(builder: (context) => Book_Appointment()),
                                        // );
                                      },
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.transparent, // Set the button's background color as transparent
                                        elevation: 0, // Remove elevation/shadow
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(8.0),
                                        ),
                                      ),
                                      child: Text(
                                        'Select',
                                        style: TextStyle(
                                          color: Color(0xff255FF3),fontWeight: FontWeight.bold,
                                          fontSize: 12,
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
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0,),
                      child: Align(alignment: Alignment.bottomCenter,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                            popup2(context);

                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.transparent, // Set background color to transparent
                            shadowColor: Colors.transparent, // Set shadow color to transparent
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0), // Rounded border radius
                            ),
                          ),
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.05,
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [Color(0xff246BFD), Color(0xff262BC6)],
                                end: Alignment.topLeft,
                                begin: Alignment.bottomRight,
                              ),

                              borderRadius: BorderRadius.circular(10.0), // Rounded border radius
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  blurRadius: 2,
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Align(
                                  alignment: Alignment.center,
                                  child: Text('Add New Patient', style: TextStyle(fontSize: 12, color: Colors.white,fontWeight: FontWeight.bold))),
                            ),
                          ),
                        ),),
                    ),
                    SizedBox(height: 20,)
                  ],
                ),
              );
            }));
      },
    );
  }

  static void popup2(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          backgroundColor: Colors.white,
          child: SingleChildScrollView(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.7,
              height: MediaQuery.of(context).size.height * 0.6,
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10, left: 5),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.close_sharp,
                          color: Color(0xff09121F),
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5, left: 10, right: 10),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Add Patient Details",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xff000000),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              height: 40.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: Colors.black, width: 0.5),
                                color: Colors.white,
                              ),
                              child: TextField(
                                maxLines: null,
                                style: TextStyle(color: Colors.black, fontSize: 16),
                                decoration: InputDecoration(
                                  hintText: "Patient’s Full Name*",
                                  contentPadding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                                  hintStyle: TextStyle(color: Color(0xff000000), fontSize: 12),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                            SizedBox(height: 15),
                            Container(
                              height: 40.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: Colors.black, width: 0.5),
                                color: Colors.white,
                              ),
                              child: TextField(
                                maxLines: null,
                                style: TextStyle(color: Colors.black, fontSize: 16),
                                decoration: InputDecoration(
                                  hintText: "+923123456789",
                                  contentPadding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                                  hintStyle: TextStyle(color: Color(0xff000000), fontSize: 12),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                            SizedBox(height: 15),
                            Container(
                              height: 40.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: Colors.black, width: 0.5),
                                color: Colors.white,
                              ),
                              child: TextField(
                                maxLines: null,
                                style: TextStyle(color: Colors.black, fontSize: 16),
                                decoration: InputDecoration(
                                  hintText: "Patient’s Mobile No.*",
                                  contentPadding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                                  hintStyle: TextStyle(color: Color(0xff000000), fontSize: 12),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                            SizedBox(height: 15),
                            Container(
                              height: 40.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: Colors.black, width: 0.5),
                                color: Colors.white,
                              ),
                              child: TextField(
                                maxLines: null,
                                style: TextStyle(color: Colors.black, fontSize: 16),
                                decoration: InputDecoration(
                                  hintText: "Patient’s Email*",
                                  contentPadding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                                  hintStyle: TextStyle(color: Color(0xff000000), fontSize: 12),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: ElevatedButton(
                        onPressed: () {
                          // Add New Patient button pressed
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.transparent,
                          shadowColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [Color(0xff246BFD), Color(0xff262BC6)],
                              end: Alignment.topLeft,
                              begin: Alignment.bottomRight,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                blurRadius: 2,
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Add New Patient',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}