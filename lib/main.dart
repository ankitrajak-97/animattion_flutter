import 'package:animated_container/tween_animation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Foo Animation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFFFD89B),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: TweenAnimation(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _height = 300.0;

  var _width = 100.0;

  Decoration myDecoration = BoxDecoration(
      borderRadius: BorderRadius.circular(8), color: Color(0xFF00C9FF));
  bool flag = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Foo Animations',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              curve: Curves.bounceOut,
              duration: Duration(seconds: 2),
              decoration: myDecoration,
              height: _height,
              width: _width,
              child: Center(child: const Text('Ankit')),
            ),
            ElevatedButton(
                onPressed: () {
                  if (flag) {
                    _height = 100.0;
                    _width = 300.0;
                    flag = false;
                    myDecoration = BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Color(0xFF84fab0));
                  } else {
                    _height = 300.0;
                    _width = 100.0;
                    flag = true;
                    myDecoration = BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color(0xFF00C9FF));
                  }
                  setState(() {});
                },
                child: Text('Animate'))
          ],
        ),
      ),
    );
  }
}
