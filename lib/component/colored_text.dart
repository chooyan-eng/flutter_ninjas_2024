import 'package:flutter/material.dart';

class ColoredText extends StatelessWidget {
  const ColoredText(this.textFragments, {super.key});

  final List<String> textFragments;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: textFragments.map(
          (text) {
            final isColored = textFragments.indexOf(text).isOdd;
            return TextSpan(
              text: text,
              style: isColored
                  ? const TextStyle(
                      color: Colors.purple,
                      fontWeight: FontWeight.bold,
                    )
                  : null,
            );
          },
        ).toList(),
      ),
    );
  }
}
