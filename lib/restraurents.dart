import "package:flutter/material.dart";
import 'package:food_kamp/page2/menu.dart';

class Restraurents extends StatelessWidget {
  String image, name, itemType;
  bool open;

  Restraurents(String name, String image, String itemType, bool open) {
    this.name = name;
    this.image = image;
    this.itemType = itemType;
    this.open = open;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        elevation: 5.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: [
            Image.asset(
              image,
              height: 141,
              fit: BoxFit.fitWidth,
            ),
            ListTile(
              title: Text(
                name,
                style: TextStyle(
                  fontSize: 22.0,
                  color: Colors.grey[700],
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    itemType,
                    style: TextStyle(
                      color: Colors.grey[600],
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        open ? "Open Now" : "Closed",
                        style: TextStyle(
                            color: open
                                ? Colors.lightGreenAccent[400]
                                : Colors.red[400],
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 18.0,
                      ),
                      Text(
                        '9:00 - 21:00',
                        style: TextStyle(
                            color: Colors.grey[700],
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        print("going");
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Menu()));
      },
    );
  }
}
