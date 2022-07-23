import 'dart:math';
import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({Key? key}) : super(key: key);

  final boxDecoration = const BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          //stops: [0.2,0.8],
          colors: [
        Color.fromARGB(255, 7, 56, 43),
        Color.fromARGB(255, 3, 235, 181)
      ]));
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        decoration: boxDecoration,
      ),
      const Positioned(top: 100, left: -30, child: _PinkBox())
    ]);
  }
}

class _PinkBox extends StatefulWidget {
  const _PinkBox({Key? key}) : super(key: key);

  @override
  State<_PinkBox> createState() => _PinkBoxState();
}

class _PinkBoxState extends State<_PinkBox> {
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -pi / 5,
      child: Container(
        width: 360,
        height: 360,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(80),
            gradient: const LinearGradient(
                colors: [Color(0xFF07382B), Color(0xFF03EBB5)])),
      ),
    );
  }
}
