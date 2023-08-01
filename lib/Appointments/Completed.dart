import 'package:calne_heatlh_care1/Appointment%20&%20Payments/Book_InClinic_Appointment.dart';
import 'package:calne_heatlh_care1/Appointment%20&%20Payments/Book_VideoConsult.dart';
import 'package:calne_heatlh_care1/Appointments/Completed_Details.dart';
import 'package:calne_heatlh_care1/Appointments/Write_Review.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Completed extends StatefulWidget {
  const Completed({Key? key}) : super(key: key);

  @override
  State<Completed> createState() => _CompletedState();
}

class _CompletedState extends State<Completed> {

  final List<String> docnames = [
    'Dr. Beckett Calger',
    'Dr. Bernard Blis',
  ];
  final List<String> consults = [
    'Video Consult',
    'In-Clinic Consult',
  ];
  final List<String> docpics = [
    'assets/doc3.svg',
    'assets/doc2.svg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Flexible(
            child: ListView.builder(
              itemCount: docnames.length,
              // Replace yourData with the actual data list length
              itemBuilder: (BuildContext context, int index) {
                // Create a Card for each item in the list
                return GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Completed_Details(), // Replace MyNewScreen with your desired screen widget
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,

                            blurRadius: 3.5,
                          )
                        ],
                      ),
                      height: 200,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                // Expanded(
                                //   flex: 1,
                                //   child: SizedBox(
                                //     height: 100.0,
                                //     child: ClipRRect(
                                //       borderRadius: BorderRadius.circular(10.0),
                                //       child: Image.asset(
                                //         'assets/doc.jpeg',
                                //         fit: BoxFit.cover,
                                //       ),
                                //     ),
                                //   ),
                                // ),
                                Container(
                                  height: 100,
                                  width: 90,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    image: DecorationImage(
                                      image: AssetImage(docpics[index]),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  child: consults[index] == 'Video Consult'
                                      ? Align(
                                    alignment: Alignment.topRight,
                                    child: Icon(
                                      CupertinoIcons.videocam_fill,
                                      color: Colors.green,
                                    ),
                                  )
                                      : SizedBox(),
                                ),

                                const SizedBox(width: 10),
                                Expanded(
                                  flex: 3,
                                  child: Column(
                                    children: [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: GestureDetector(
                                          onTap: (){
                                            // Navigator.push(
                                            //     context,
                                            //     MaterialPageRoute(builder: (context) => My_Profile(),
                                            //     ));
                                          },
                                          child: Text(
                                            docnames[index],
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                            ),
                                          ),
                                        ),
                                      ),

                                      SizedBox(height: 20,),
                                      Row(

                                        children: [
                                          Text(consults[index],style: TextStyle(fontSize: 13,color: Colors.black87),),
                                          SizedBox(width: 15,),
                                          Container(
                                            height: 29,
                                            width: 80,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color:  Color(0xff31B802) ,
                                                width: 1,
                                              ),
                                              borderRadius: BorderRadius.circular(8.0),
                                            ),
                                            child: TextButton(
                                              onPressed: () {

                                              },
                                              child: Text(
                                                'Completed',
                                                style: TextStyle(
                                                  color:  Color(0xff31B802),
                                                  fontSize: 9,
                                                ),
                                              ),
                                            ),
                                          ),


                                        ],
                                      ),
                                      SizedBox(height: 20,),

                                      Row(
                                        children: [

                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text("Sep 17, 2022",style: TextStyle(fontSize: 12,color: Color(0xff3D3D3D),fontWeight: FontWeight.w500),)),
                                          SizedBox(width: 20,),
                                          Text("11:00 AM",style: TextStyle(fontSize: 12,color: Color(0xff3D3D3D),fontWeight: FontWeight.w500),),
                                        ],
                                      ),


                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 5,),
                            Divider(color: Colors.grey.withOpacity(0.3),thickness: 1,),
                            SizedBox(height: 5,),
                            Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    height: 35,
                                    // width: MediaQuery.of(context).size.width * 0.6,
                                    decoration: BoxDecoration(
                                      color: Color(0xff31B802
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: TextButton(
                                      onPressed: () {
                                        if(consults[index] == 'Video Consult')
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => Book_VideoConsult()),
                                          );
                                        if(consults[index] == 'In-Clinic Consult')
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => In_clinic_Appointment()),
                                          );
                                      },
                                      //
                                      child: Text(
                                        'Book Again',
                                        style: TextStyle(
                                            color: Colors.white,fontSize: 13
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 8,),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    height: 35,
                                    // width: MediaQuery.of(context).size.width * 0.6,
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => Write_Review()),
                                        );
                                      },
                                      //
                                      child: Text(
                                        'Leave a Review',
                                        style: TextStyle(
                                            color: Colors.white,fontSize: 13
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )

                          ],
                        ),
                      ),
                    ),
                  ),
                );

              },
            ),
          )
        ],
      ),
    );
  }
}
