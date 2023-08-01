import 'package:flutter/material.dart';

import 'International_Isurance_Madical.dart';
import 'MainScreen.dart';
import 'Profile_Page.dart';

class InsuranceField extends StatefulWidget {
  const InsuranceField({Key? key}) : super(key: key);

  @override
  State<InsuranceField> createState() => _InsuranceFieldState();
}

class _InsuranceFieldState extends State<InsuranceField> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          const SizedBox(
            height: 80,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(Icons.arrow_back, size: 30, color: Colors.black),
              ),
              Transform.translate(
                offset: const Offset(-20, 0),
                child: const Text(
                  'Insurance Company',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Company Name',
                prefixText: 'International Medical Group, INC.',
                suffixIcon: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const InternationalIsurance()));
                    },
                    child: const Icon(Icons.arrow_drop_down_outlined,
                        color: Colors.black)),
                border: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Company Name',
                prefixText: '92123456789',
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Company Email',
                prefixText: 'InternationalMedicalGroupINC@gmail.com',
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Insurance ID',
                prefixText: '123456789',
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Expirey Date',
                prefixText: '01-Jan-2025',
                suffix: Image.asset('assets/arrow-right-s-line.png'),
                border: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Max Insurance Limit',
                prefixText: '\$ 50,000',
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Your Contact number',
                prefixText: '92123456789',
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(MediaQuery.of(context).size.width, 50),
                    backgroundColor: const Color(0XFF262BC6),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const InternationalIsurance()));
                },
                child: const Text(
                  'Submit',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                )),
          ),
          const SizedBox(
            height: 20,
          ),
        ]),
      ),
    );
  }
}
