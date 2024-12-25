import 'package:flutter/material.dart';

class CrossFade extends StatefulWidget {
  const CrossFade({super.key});

  @override
  State<StatefulWidget> createState() {
    return CrossFadeStates();
  }
}

class CrossFadeStates extends State<CrossFade> {
  bool isFirst = true;
  CrossFadeState myState = CrossFadeState.showFirst;
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   Timer(Duration(seconds: 3), () {
  //     reload();
  //   });
  // }

  reload() {
    if (isFirst) {
      isFirst = false;
    } else {
      isFirst = true;
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedCrossFade(
                firstChild: Container(
                  width: 200,
                  height: 200,
                  color: Colors.black,
                ),
                secondChild: Image.asset(
                  'assets/images/butterfly.webp',
                  width: 300,
                  height: 400,
                ),
                crossFadeState: isFirst
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
                sizeCurve: Curves.fastOutSlowIn,
                duration: Duration(seconds: 2)),
            ElevatedButton(
                onPressed: () {
                  reload();
                },
                child: Text('Animate'))
          ],
        ),
      ),
    );
  }
}
