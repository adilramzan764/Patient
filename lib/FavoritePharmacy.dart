
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'HayderPharmacy.dart';
import 'MainScreen.dart';
import 'MedicalRecord1.dart';
class FavoritePharmacy extends StatefulWidget {
  const FavoritePharmacy({Key? key}) : super(key: key);

  @override
  State<FavoritePharmacy> createState() => _FavoritePharmacyState();
}

class _FavoritePharmacyState extends State<FavoritePharmacy> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
body: Column( children: [

  Padding(
    padding: const EdgeInsets.only(left: 20,right: 100),
    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(onTap:(){
          Navigator.pop(
              context
          );
        },

            child: Icon(Icons.arrow_back)),
        Text('Medical Records',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)
      ],
    ),
  ),
  SizedBox(
    height: 20,
  ),
  ListTile(
      leading: Image.asset(
        'assets/markus-winkler-pOu_UmkOG-0-unsplash 2.png',
      ),
      title: InkWell(onTap:() {
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const HayderPharmacy()
            )
        );
      },
        child: Text('Hayder Pharmacy',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 20)),
      ),
      subtitle: Row(
        children: [Text('1753 Sold',style: TextStyle(color: Colors.blue,fontSize: 11)),
          RatingBar.builder(
            initialRating: 1,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 1,
            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
            itemBuilder: (context, _) => Transform.scale(scale: 0.6,
              child: Icon(
                Icons.star,
                color: Colors.blue,
              ),
            ),
            onRatingUpdate: (rating) {
              print(rating);
            },
          ),
          RichText(
            text: TextSpan(
              text: '856 Reviews',
              style: TextStyle(
                color: Colors.blue,fontSize: 11

              ),
              children: [
              ],
            ),
          )
        ],
      ),
      trailing: Image.asset(
          'assets/heart-3-fill.png')),
  SizedBox(
    height: 20,
  ),
  ListTile(
      leading: Image.asset(
        'assets/markus-winkler-pOu_UmkOG-0-unsplash 2 (1).png',
      ),
      title: Text('Ayoub Medical store',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 20)),
      subtitle: Row(
        children: [Text('369 Sold',style: TextStyle(color: Colors.blue,fontSize: 11)),
          RatingBar.builder(
            initialRating: 1,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 1,
            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
            itemBuilder: (context, _) => Transform.scale(scale: 0.6,
              child: Icon(
                Icons.star,
                color: Colors.blue,
              ),
            ),
            onRatingUpdate: (rating) {
              print(rating);
            },
          ),
          RichText(
            text: TextSpan(
              text: '1.6k+ Reviews',
              style: TextStyle(
                  color: Colors.blue,fontSize: 11

              ),
              children: [
              ],
            ),
          )
        ],
      ),
      trailing: Image.asset(
          'assets/heart-3-fill.png')),
  SizedBox(
    height: 20,
  ),
  ListTile(
      leading: Image.asset(
        'assets/markus-winkler-pOu_UmkOG-0-unsplash 2 (2).png',
      ),
      title: Text('Subhan Pharmacy',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 20)),
      subtitle: Row(
        children: [Text('1503 Sold',style: TextStyle(color: Colors.blue,fontSize: 11)),
          RatingBar.builder(
            initialRating: 1,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 1,
            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
            itemBuilder: (context, _) => Transform.scale(scale: 0.6,
              child: Icon(
                Icons.star,
                color: Colors.blue,
              ),
            ),
            onRatingUpdate: (rating) {
              print(rating);
            },
          ),
          RichText(
            text: TextSpan(
              text: '8.9k+ Reviews',
              style: TextStyle(
                  color: Colors.blue,fontSize: 11

              ),
              children: [
              ],
            ),
          )
        ],
      ),
      trailing: Image.asset(
          'assets/heart-3-fill.png')),
  SizedBox(
    height: 20,
  ),
  ListTile(
      leading: Image.asset(
        'assets/markus-winkler-pOu_UmkOG-0-unsplash 2 (4).png',
      ),
      title: Text('Bahoo Pharmacy',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 20)),
      subtitle: Row(
        children: [Text('2053 Sold',style: TextStyle(color: Colors.blue,fontSize: 11)),
          RatingBar.builder(
            initialRating: 1,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 1,
            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
            itemBuilder: (context, _) => Transform.scale(scale: 0.6,
              child: Icon(
                Icons.star,
                color: Colors.blue,
              ),
            ),
            onRatingUpdate: (rating) {
              print(rating);
            },
          ),
          RichText(
            text: TextSpan(
              text: '921 Reviews',
              style: TextStyle(
                  color: Colors.blue,fontSize: 11

              ),
              children: [
              ],
            ),
          )
        ],
      ),
      trailing: Image.asset(
          'assets/heart-3-fill.png')),


]),
    );
  }
}
