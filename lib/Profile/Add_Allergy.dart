import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:material_tag_editor/tag_editor.dart';
import 'package:textfield_tags/textfield_tags.dart';


class Add_Allergy extends StatefulWidget {
  const Add_Allergy({Key? key}) : super(key: key);

  @override
  State<Add_Allergy> createState() => _Add_AllergyState();
}

class _Add_AllergyState extends State<Add_Allergy> {

  final List<String> suggestions = [
    'Soy',
    'Nuts',
    'Eggs',
    'Mushroom',
    'Fish',
    'Pencillin',
    'Sulpha Drugs',
    'Local Anesthesia',
    'Pollen',

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
                        context
                      );
                    },
                    iconSize: 24,
                  ),
                ),
                const Text(
                  "Add an Allergy",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 50,
                  width: 30,
                  child: IconButton(
                    icon: const Icon(
                      Icons.check,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => My_Doctors()),
                      // );
                    },
                    iconSize: 24,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30,),


          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  border: Border.all(color: Color(0xff246BFD)),
                ),
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0), // Adjust the top and bottom padding
                  child: ListView(
                    padding: EdgeInsets.zero, // Remove the default ListView padding
                    children: <Widget>[
                      TagEditor(
                        length: _values.length,
                        controller: _textEditingController,
                        focusNode: _focusNode,
                        delimiters: const [',', ' '],
                        hasAddButton: false,
                        resetTextOnSubmitted: true,
                        // This is set to grey just to illustrate the `textStyle` prop
                        textStyle: const TextStyle(color: Colors.black),
                        onSubmitted: (outstandingValue) {
                          setState(() {
                            _values.add(outstandingValue);
                          });
                        },

                        inputDecoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Add an Allergy',
                        ),
                        onTagChanged: (newValue) {
                          setState(() {
                            _values.add(newValue);
                          });
                        },
                        tagBuilder: (context, index) => _Chip(
                          index: index,
                          label: _values[index],
                          onDeleted: _onDelete,
                        ),
                        // InputFormatters example, this disallow \ and /
                        inputFormatters: [
                          FilteringTextInputFormatter.deny(RegExp(r'[/\\]'))
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Container(
            height:  40,
            width: double.infinity,
            color: Color(0xffEDEFF3
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Suggestions",style: TextStyle(fontSize: 18,color: Color(0xff5F5F5F),fontWeight: FontWeight.bold),)),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: suggestions.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      height: 40,
                      child: Padding(padding: EdgeInsets.only(left: 20),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(suggestions[index],style: TextStyle(fontSize: 15),),
                      ),),
                    ),
                    Divider(thickness: 2,color: Color(0xff77787A1A).withOpacity(0.1),)
                  ],
                );
              },
            ),
          )







        ],
      ),
    );
  }










  List<String> _values = [];
  final FocusNode _focusNode = FocusNode();
  final TextEditingController _textEditingController = TextEditingController();

  _onDelete(index) {
    setState(() {
      _values.removeAt(index);
    });
  }


}

class _Chip extends StatelessWidget {
  const _Chip({
    required this.label,
    required this.onDeleted,
    required this.index,


  });

  final String label;
  final ValueChanged<int> onDeleted;
  final int index;


  @override
  Widget build(BuildContext context) {
    return Chip(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
    backgroundColor: Color(0xffE5EDFF),
      labelPadding: const EdgeInsets.only(left: 8.0),

      label: Text(label,style: TextStyle(fontWeight: FontWeight.normal),),
      deleteIcon: const Icon(
        Icons.cancel,
        color: Colors.black12,
        size: 18,
      ),
      onDeleted: () {
        onDeleted(index);
      },
    );
  }
}

