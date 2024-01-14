import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.isiText, {super.key});

  final String isiText;

  @override
  Widget build(context) {
    return Text(
      isiText,
      style: const TextStyle(color: Colors.white, fontSize: 30),
    );
  }
}
