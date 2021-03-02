import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_kamp/tools/countview.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       leadingWidth: 0,
       toolbarHeight: 242,
       flexibleSpace: Card(
         margin: EdgeInsets.zero,
         elevation: 0.0,
         clipBehavior: Clip.antiAlias,
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.stretch,
           children: [
             Image.asset('assets/IMAGES/th (15).png',fit: BoxFit.fitWidth,),
             ListTile(
               title: Text(
                 'Tea Post',
                 style: TextStyle(fontSize: 22.0,color: Colors.grey[700],fontWeight: FontWeight.bold,),
               ),
               subtitle: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text('Tea,Coffee,Fast food,Beverages',style: TextStyle(color: Colors.grey[600],),),
                   Row(
                     children: [
                       Text('Open Now',style: TextStyle(color: Colors.lightGreenAccent[400], fontWeight: FontWeight.bold),),
                       SizedBox(width: 18.0,),
                       Text('9:00 - 21:00',style: TextStyle(color: Colors.grey[700], fontWeight: FontWeight.bold),),
                     ],
                   )
                 ],
               ),
             ),
           ],
         ),
       ),
     ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Menu',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Colors.blueGrey[800]),),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Hot Tea',style: TextStyle(
                      fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black54,
                    ),),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: Icon(Icons.arrow_right,size: 42,color: Colors.black,),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Pudina',style: TextStyle(
                                fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black45
                              ),),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [Text('Rs. 15',style: TextStyle(
                                    color: Colors.grey[400],fontWeight: FontWeight.bold,
                                    fontSize: 10
                                ),),
                                  Text('Available Now',style: TextStyle(
                                      color: Colors.lightGreen[400],fontWeight: FontWeight.bold,
                                      fontSize: 10
                                  ),),
                                ],
                              ),
                            ],
                          ),
                          CountButtonView(
                            initialCount: 0,
                            onChange: (count) {
                            },
                          )
                        ],
                      ),

                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
