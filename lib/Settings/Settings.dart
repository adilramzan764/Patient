import 'package:calne_heatlh_care1/Settings/Delete_Account.dart';
import 'package:calne_heatlh_care1/Appointment%20&%20Payments/My_Bookings.dart';
import 'package:calne_heatlh_care1/My_Doctors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  final List<String> texts = [
    'About',
    'Privacy Policy',
    'Help and Support',
    'Rate Us',
    'Are you a Doctor?',
    'Logout',

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 60,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
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
                        context);},
                    iconSize: 24,
                  ),
                ),
                const Text(
                  "Settings",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 50,
                  width: 30,
                )
              ],
            ),
          ),
          Expanded(
            child: Container(

              padding: EdgeInsets.all(8.0),
              child: ListView.builder(
                itemCount: texts.length,
                itemBuilder: (context, index) {
                  print(texts[index]);
                  if(texts[index]=='Logout'){
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      child: SizedBox(
                        height: 40,
                        child: ElevatedButton(

                            style: const ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll(Colors.white)
                            ),
                            onPressed: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(builder: (context) => My_Bookings()),
                              // );
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0,bottom: 8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(height: 8.0,),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(texts[index],style: const TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),)),
                                  Expanded(
                                    child: Align(alignment: Alignment.centerRight,
                                        child:
                                        IconButton(onPressed: () {

                                        },icon: Icon(Icons.exit_to_app,color: Colors.blue,),iconSize: 20,)
                                    ),
                                  )
                                ],
                              ),
                            )),
                      ),
                    );
                  }
                  else{
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      child: SizedBox(
                        height: 40,
                        child: ElevatedButton(

                            style: const ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll(Colors.white)
                            ),
                            onPressed: () {

                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child:
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(texts[index],style: const TextStyle(fontWeight: FontWeight.bold,color: Colors.black),)),


                            )),
                      ),
                    );
                  }

                },
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(left: 10,right: 10,bottom: 40),
          child: Align(alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: 40,
              child: ElevatedButton(

                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.white)
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Delete_Account()),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text("Delete Account",style: const TextStyle(fontWeight: FontWeight.bold,color: Colors.red),)),


                  )),
            ),
          ),)
        ],
      ),
    );
  }
}
