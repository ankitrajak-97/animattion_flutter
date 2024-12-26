import 'package:flutter/material.dart';

class ListWheeel extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ListWheelState();
  }
}

class ListWheelState extends State<ListWheeel> {
  var arrWheel = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('3d Text'),
      ),
      body: ListWheelScrollView(
        itemExtent: 200,
        children: arrWheel
            .map((e) => Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Center(
                    child: Container(
                      child: Center(
                          child: Text(
                        '$e',
                        style: TextStyle(fontSize: 24, color: Colors.white),
                      )),
                      decoration: BoxDecoration(
                          color: Color(0xFF592bd8),
                          borderRadius: BorderRadius.circular(24)),
                      width: double.infinity,
                      height: 200,
                    ),
                  ),
                ))
            .toList(),
      ),
    );
  }
}
