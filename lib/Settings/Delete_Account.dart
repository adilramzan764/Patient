import 'package:calne_heatlh_care1/Profile/Add_Allergy.dart';
import 'package:calne_heatlh_care1/Profile/My_Profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Delete_Account extends StatefulWidget {
  const Delete_Account({Key? key}) : super(key: key);

  @override
  State<Delete_Account> createState() => _Delete_AccountState();
}

class _Delete_AccountState extends State<Delete_Account> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Padding(
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

                        iconSize: 24, onPressed: () { Navigator.pop(
                        context);},
                      ),
                    ),
                    const Text(
                      "Delete Account",
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 50,
                      width: 30,
                    )
                  ],
                ),
              )),
          SizedBox(height: 30,),
          Padding(padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text("Are you sure? This will Permanently delete your account",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),
          SizedBox(height: 30,),
          Padding(padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text("Once the deletion process begins, you  won’t be able to reactivate your account or retrieve any data or information",style: TextStyle(fontSize: 16),)),

          SizedBox(height: 30,),
          Padding(padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text("You will lose access to everything from your account, icluding following",style: TextStyle(fontSize: 16),)),

          SizedBox(height: 30,),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Icon(CupertinoIcons.circle_fill,color: Colors.blue,size: 10,),
              SizedBox(width: 15,),
              Text("Appointments",style: TextStyle(fontSize: 14,color: Colors.grey),),

              ],
            ),
          ),
          SizedBox(height: 10,),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Icon(CupertinoIcons.circle_fill,color: Colors.blue,size: 10,),
                SizedBox(width: 15,),
                Text("Tests",style: TextStyle(fontSize: 14,color: Colors.grey),),

              ],
            ),
          ),
          SizedBox(height: 10,),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Icon(CupertinoIcons.circle_fill,color: Colors.blue,size: 10,),
                SizedBox(width: 15,),
                Text("Orders",style: TextStyle(fontSize: 14,color: Colors.grey),),

              ],
            ),
          ),
          SizedBox(height: 10,),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Icon(CupertinoIcons.circle_fill,color: Colors.blue,size: 10,),
                SizedBox(width: 15,),
                Text("Consultations",style: TextStyle(fontSize: 14,color: Colors.grey),),

              ],
            ),
          ),
          SizedBox(height: 10,),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Icon(CupertinoIcons.circle_fill,color: Colors.blue,size: 10,),
                SizedBox(width: 15,),
                Text("Medical Records",style: TextStyle(fontSize: 14,color: Colors.grey),),

              ],
            ),
          ),
          SizedBox(height: 10,),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Icon(CupertinoIcons.circle_fill,color: Colors.blue,size: 10,),
                SizedBox(width: 15,),
                Text("Payments",style: TextStyle(fontSize: 14,color: Colors.grey),),

              ],
            ),
          ),
          SizedBox(height: 15,),
          Padding(padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text("Confirm your account deletion request in order to delete your account.",style: TextStyle(fontSize: 16),)),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right : 10,left: 10,bottom: 40),
              child: Align(alignment: Alignment.bottomCenter,
              child: Container(
                height: 40,
                width: double.infinity,
                // color: Colors.red,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: TextButton(
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => Add_Allergy()),
                    // );
                  },
                  //
                  child: Text(
                    'Delete',
                    style: TextStyle(
                      color: Colors.white,fontSize: 16
                    ),
                  ),
                ),
              )),
            ),
          )

        ],
      )
    );
  }
}
