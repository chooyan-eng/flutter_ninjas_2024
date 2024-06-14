import 'package:flutter/material.dart';
import 'package:flutter_ninjas_2024/main.dart';

class CodeContainer extends StatelessWidget {
  const CodeContainer(
    this.code, {
    super.key,
    this.style,
  });

  final String code;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.purple.shade300,
          width: 4,
        ),
        color: Colors.black87,
      ),
      child: Text.rich(
        highlighter.highlight(code),
        style: style ?? const TextStyle(fontSize: 24),
      ),
    );
  }
}
