import 'package:flutter/material.dart';

const atasKiri = Alignment.topLeft;
const bawahKanan = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(
      {super.key,
      required this.warna1,
      required this.warna2,
      required this.child});

  const GradientContainer.pink({super.key, required this.child})
      : warna1 = Colors.pink,
        warna2 = Colors.deepPurple;

  final Color warna1;
  final Color warna2;
  final Widget child;
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [warna1, warna2], begin: atasKiri, end: bawahKanan)),
      child: Center(
        child: child,
      ),
    );
  }
}
