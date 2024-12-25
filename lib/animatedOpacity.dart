import 'package:flutter/material.dart';

class AnimatedOppacity extends StatefulWidget {
  const AnimatedOppacity({super.key});

  @override
  State<StatefulWidget> createState() {
    return AnimatedState();
  }
}

class AnimatedState extends State<AnimatedOppacity> {
  var myOpacity = 1.0;
  bool _visible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          AnimatedOpacity(
            opacity: myOpacity,
            duration: Duration(seconds: 2),
            curve: Curves.elasticOut,
            child: Container(
              width: 200,
              height: 200,
              color: Colors.green,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          ElevatedButton(
              onPressed: () {
                if (_visible) {
                  myOpacity = 0.0;
                  _visible = false;
                } else {
                  myOpacity = 1.0;
                  _visible = true;
                }

                setState(() {});
              },
              child: Text('Close'))
        ]),
      ),
    );
  }
}
