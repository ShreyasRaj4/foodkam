import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:food_kamp/restraurents.dart';

class OrderNow extends StatefulWidget {
  OrderNow({Key key}) : super(key: key);

  @override
  _OrderNowState createState() => _OrderNowState();
}

class _OrderNowState extends State<OrderNow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 180.0,
        flexibleSpace: Image(
          image: AssetImage('assets/IMAGES/Group 286.png'),
          fit: BoxFit.cover,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '   ORDER NOW',
            style: TextStyle(
              fontSize: 27.0,
              color: Colors.deepOrange,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          Flexible(
            child: StreamBuilder(
              stream: FirebaseFirestore.instance
                  .collection('restaurants')
                  .snapshots(),
              builder: (BuildContext context,
                  AsyncSnapshot<QuerySnapshot> snapshot) {
                if (!snapshot.hasData) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
                return ListView(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  children: snapshot.data.docs.map((doc) {
                    return Restraurents(
                      doc['name'],
                      doc['image'],
                      doc['itemType'],
                      doc['open'],
                    );
                  }).toList(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
