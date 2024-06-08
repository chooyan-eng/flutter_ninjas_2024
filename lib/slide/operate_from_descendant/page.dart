import 'package:flutter/material.dart';
import 'package:flutter_ninjas_2024/component/second_case_graph.dart';

class OperateFromDescendantPage extends StatelessWidget {
  const OperateFromDescendantPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Case 2: How to change from descendants?'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(32),
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: SecondCaseGraph(),
        ),
      ),
    );
  }
}
