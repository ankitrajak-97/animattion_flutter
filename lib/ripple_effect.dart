import 'package:flutter/material.dart';

class RippleEffect extends StatefulWidget {
  const RippleEffect({super.key});

  @override
  State<StatefulWidget> createState() {
    return _RippleState();
  }
}

class _RippleState extends State<RippleEffect>
    with SingleTickerProviderStateMixin {
  var radius = [100.0, 150.0, 200.0, 250.0, 300.0];
  late Animation _animation;
  late AnimationController _animationController;
  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: Duration(seconds: 8), lowerBound: 0.5);
    // _animation = Tween(begin: 0.0, end: 1.0).animate(_animationController);
    // By default _animationController has default values of begin 0 and end 1 so don't need an animation class variable

    _animationController.addListener(() {
      setState(() {});
    });
    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ripple Effect '),
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            buildMyContainer(radius[0]),
            buildMyContainer(radius[1]),
            buildMyContainer(radius[2]),
            buildMyContainer(radius[3]),
            buildMyContainer(radius[4]),
            Icon(
              Icons.add_call,
              size: 36,
            )
          ], // .toList() is correctly applied to the mapped iterable
        ),
      ),
    );
  }

  Widget buildMyContainer(radius) {
    return Container(
      width: radius * _animationController.value,
      height: radius * _animationController.value,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.teal.withOpacity(1.0 - _animationController.value),
      ),
    );
  }
}
