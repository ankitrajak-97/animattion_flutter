import 'package:flutter/material.dart';

class HeroAnimation extends StatefulWidget {
  const HeroAnimation({super.key});

  @override
  State<StatefulWidget> createState() {
    return HeroState();
  }
}

class HeroState extends State<HeroAnimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Hero(
              tag: 'Santa',
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        (MaterialPageRoute(
                          builder: (context) => Detailpage(),
                        )));
                  },
                  child: Image.asset(
                    'assets/images/party.png',
                    width: 150,
                    height: 150,
                  ),
                ),
              )),
          color: Colors.indigoAccent,
        ),
      ),
    );
  }
}

class Detailpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.purpleAccent,
        child:
            Hero(tag: 'Santa', child: Image.asset('assets/images/party.png')),
      ),
    );
  }
}
