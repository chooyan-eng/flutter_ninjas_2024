import 'package:flutter/material.dart';
import 'package:flutter_ninjas_2024/component/code_container.dart';
import 'package:flutter_ninjas_2024/component/cons.dart';
import 'package:flutter_ninjas_2024/component/list_item.dart';
import 'package:flutter_ninjas_2024/component/pros.dart';
import 'package:gap/gap.dart';

class UsingArgumentPage extends StatelessWidget {
  const UsingArgumentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Option 1: Use arguments'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CodeContainer(_code),
                Gap(32),
                CodeContainer(_codeClock),
              ],
            ),
            const Gap(32),
            const Pros(),
            const Gap(16),
            ListItem.rich(const [
              '',
              'Straightforward',
              ' and easy to understand',
            ]),
            const Gap(32),
            const Cons(),
            const Gap(16),
            ListItem.rich(const [
              'Need to write the same code multiple times',
              ' if we need multiple TinyClock',
            ]),
            const Gap(16),
            ListItem.rich(const [
              'Need "prop drilling"',
              ' if TinyClock is far away on the widget tree',
              ' from StatefulWidget',
            ]),
          ],
        ),
      ),
    );
  }
}

const _code = '''
TinyClock(
    backgroundColor: _backgroundColor,
    borderColor: _borderColor,
    buttonColor: _buttonColor,
    textColor: _textColor,
),''';

const _codeClock = '''
Widget build(BuildContext context) {
    Container(
        color: backgroundColor,
    ),
}''';
