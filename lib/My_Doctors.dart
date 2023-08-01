import 'package:calne_heatlh_care1/Profile/My_Profile.dart';
import 'package:calne_heatlh_care1/Payments.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class My_Doctors extends StatefulWidget {
  const My_Doctors({Key? key}) : super(key: key);

  @override
  State<My_Doctors> createState() => _My_DoctorsState();
}

class _My_DoctorsState extends State<My_Doctors> {
  bool _isPressed = false;

  void _togglePressed() {
    setState(() {
      _isPressed = !_isPressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Align(
                        alignment: Alignment.centerLeft,
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
                    ),
                    const Text(
                      "My Doctors",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 50,
                      width: 30,
                    )
                  ],
                )),
            // SizedBox(
            //   height: 20,
            // ),

            Expanded(
                child: ListView.builder(
              itemCount: 3,
              // Replace yourData with the actual data list length
              itemBuilder: (BuildContext context, int index) {
                // Create a Card for each item in the list
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
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
                    height: 155,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: SizedBox(
                              height: 100.0,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.asset(
                                  'assets/doc3.svg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            flex: 3,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Dr. Beckett Calger",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                    InkWell(
                                      onTap: _togglePressed,
                                      child: Icon(
                                        Icons.favorite,
                                        color: _isPressed ? Colors.blue : Colors.grey,
                                        size: 24.0,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10,),
                                Divider(color: Colors.grey.withOpacity(0.2),thickness: 1,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Cardiologists",style: TextStyle(fontSize: 12,color: Colors.grey),),
                    Container(width: 1,height: 10,color: Colors.black,),
                                    Text("Venus Hospital",style: TextStyle(fontSize: 12,color: Colors.grey),),

                                  ],
                                ),
                                SizedBox(height: 10,),
                                Align(alignment: Alignment.centerLeft,
                                    child: Text("10 years experience overall",style: TextStyle(fontSize: 11,color: Colors.black.withOpacity(0.6),fontWeight: FontWeight.bold),)),
                                SizedBox(height: 10,),
                                Row(
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child:
                                      Icon(
                                            Icons.star,
                                            color:  Colors.blue,
                                            size: 18.0,
                                          ),

                                    ),
                                    SizedBox(width: 10,),
                                    Text("5.0",style: TextStyle(fontSize: 12,color: Colors.grey),),
                                    SizedBox(width: 20,),
                                    Text("5.765 reviews",style: TextStyle(fontSize: 12,color: Colors.grey),),

                                  ],
                                ),


                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );

              },
            ))
          ],
        ),
      ),
    );
  }
}
