import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animated Container Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Animated Container Demo'),
        ),
        body: Center(
          child: MyBox(),
        ),
      ),
    );
  }
}

class MyBox extends StatefulWidget {
  @override
  _MyBoxState createState() => _MyBoxState();
}

class _MyBoxState extends State<MyBox> {
  Color _color = Colors.blue;
  double _size = 100.0;
  Random random = new Random();

  void changeBox() {
    setState(() {
      _color = Color.fromRGBO(
          random.nextInt(256), random.nextInt(256), random.nextInt(256), 1.0);
      _size = random.nextDouble() * 200.0 + 50.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        changeBox();
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        width: _size,
        height: _size,
        decoration: BoxDecoration(
          color: _color,
          borderRadius: BorderRadius.circular(16.0),
        ),
      ),
    );
  }
}
