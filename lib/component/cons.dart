import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Cons extends StatelessWidget {
  const Cons({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          Icons.clear,
          color: Colors.red,
          size: 40,
        ),
        Gap(16),
        Text(
          'Cons',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.underline,
          ),
        ),
      ],
    );
  }
}
