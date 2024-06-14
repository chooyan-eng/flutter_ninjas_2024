import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Pros extends StatelessWidget {
  const Pros({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          Icons.check,
          color: Colors.green,
          size: 40,
        ),
        Gap(16),
        Text(
          'Pros',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.underline,
          ),
        ),
      ],
    );
  }
}
