import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Personal extends StatefulWidget {
  const Personal({Key? key}) : super(key: key);

  @override
  State<Personal> createState() => _PersonalState();
}

class _PersonalState extends State<Personal> {
  int _selectedIndex = -1;
  List< TextEditingController> _textEditingController =[
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
  ];
  int _selectedTextFieldIndex = -1;

  // @override
  // void initState() {
  //   super.initState();
  //   _textEditingController.addListener(_onTextFieldFocusChange);
  // }
  //
  // @override
  // void dispose() {
  //   _textEditingController.dispose();
  //   super.dispose();
  // }
  //
  // void _onTextFieldFocusChange() {
  //   setState(() {
  //     _selectedTextFieldIndex =
  //     _textEditingController.text.isNotEmpty &&
  //         _textEditingController.selection.baseOffset <
  //             _textEditingController.text.length
  //         ? _selectedIndex
  //         : -1;
  //   });
  // }

  final List<String> hints = [
    'Contact Number',
    'Email ID',
    'Gender',
    'Date of Birth',
    'Blood Group',
    'Marital Status',
    'Height',
    'Weight',
    'Complete Address',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: 70,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(top: 10, left: 24, right: 24),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Name",
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "James Andrew",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffD9E2F4),
                    ),
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Add Photo",
                          style: TextStyle(
                              fontSize: 10,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 5,),
          Divider(
            thickness: 3,
            color: Color(0xffEDEFF3),
          ),

          Flexible(
            child: ListView.builder(
              itemCount: hints.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 80,
                    child: Stack(
                      children: [

                        Padding(
                          padding: const EdgeInsets.only(top:15,left: 8),
                          child: Text(
                            hints[index],

                            style: TextStyle(
                              color: _selectedTextFieldIndex==index ? Colors.black : Colors.grey,
                              fontWeight: _selectedTextFieldIndex == index
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                            ),
                          ),
                        ),
                        

                        Align(
                          alignment: Alignment.bottomCenter,
                          child: TextField(


                            controller: _textEditingController[index],
                            onTap: () {
                              setState(() {
                                _selectedIndex = index;
                                _selectedTextFieldIndex = index;
                              });
                            },
                            decoration: InputDecoration(

                                filled: true,
                                fillColor: _selectedIndex == index
                                    ?                                 Colors.blue.withOpacity(0.2)

                                : Colors.transparent,

                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),


                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                  color: Colors.grey.shade300

                                  // width: 1.0,
                                ),
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 8.0,
                                vertical: 24.0,
                              ),
                              focusedBorder: OutlineInputBorder(

                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                  color: _selectedIndex == index
                                      ? Colors.blue
                                      : Colors.white,
                                  // width: 1.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
