import 'package:flutter/material.dart';
import 'package:flutter_belajar/custom_widget/gradient_container.dart';
import 'package:flutter_belajar/custom_widget/styled_text.dart';
import 'package:flutter_belajar/dice.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          flexibleSpace: const GradientContainer(
            warna1: Color.fromARGB(255, 255, 242, 120),
            warna2: Color.fromARGB(255, 190, 172, 17),
            child: SizedBox(),
          ),
          toolbarHeight: 70,
          elevation: 10,
          centerTitle: true,
          shadowColor: Colors.black,
          backgroundColor: const Color.fromARGB(255, 251, 251, 91),
          title: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.accessible_rounded),
              SizedBox(width: 10),
              Text('APLIKASI BABU'),
            ],
          ),
        ),
        body: const GradientContainer.pink(
            child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              StyledText('DADU AJAIB'),
              SizedBox(height: 40),
              DiceRoll(),
            ],
          ),
        )));
  }
}
