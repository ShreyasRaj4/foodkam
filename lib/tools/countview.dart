import 'package:flutter/material.dart';
typedef void CountButtonClickCallBack(int count);
class CountButtonView extends StatefulWidget {
  final int initialCount;
  final CountButtonClickCallBack onChange;
  CountButtonView({this.initialCount, this.onChange});
  @override
  _CountButtonViewState createState() => _CountButtonViewState();
}
class _CountButtonViewState extends State<CountButtonView> {
  int count;
  @override
  void initState() {
    super.initState();
    count = widget.initialCount;
  }
  @override
  void dispose() {
    super.dispose();
  }
  void updateCount(int addValue) {
    if (count + addValue >= 0) {
      setState(() {
        count += addValue;
      });
      if (widget.onChange != null) {
        widget.onChange(count);
      }
    }
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 74,
        decoration: BoxDecoration(
            color: Color(0xddFFFFFF),
            border: Border.all(color: Colors.orange, width: 1.0),
            borderRadius: BorderRadius.circular(22.0)),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              GestureDetector(
                  onTap: () {
                    updateCount(-1);
                  },
                  child: Container(
                      width: 20.0,
                      child: Center(
                          child: Icon(Icons.remove,color: Colors.orange,)
                      ))),
              Container(
                child: Center(
                    child: Text(
                      '$count',
                      style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange,
                          decoration: TextDecoration.none),
                    )),
              ),
              GestureDetector(
                  onTap: () {
                    updateCount(1);
                  },
                  child: Container(
                      width: 22.0,
                      child: Center(
                          child: Icon(Icons.add,color: Colors.orange,)
                      ))),
            ],
          ),
        ),
      ),
    );
  }
}
