import 'package:flutter/material.dart';

class TweenAnimation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TweenState();
  }
}

class TweenState extends State<TweenAnimation>
    with SingleTickerProviderStateMixin {
  late Animation animation;
  late AnimationController animationController;
  late Animation colorAnimation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    animation = Tween(begin: 0.0, end: 200.0).animate(animationController);
    colorAnimation =
        ColorTween(begin: Color(0xfffa7a8e), end: Color(0xff3cba92))
            .animate(animationController);
    animationController.addListener(() {
      // print(animation.value);
      setState(() {});
    });
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tween Animation '),
      ),
      body: Center(
        child: Container(
          width: animation.value,
          height: animation.value,
          color: colorAnimation.value,
        ),
      ),
    );
  }
}
