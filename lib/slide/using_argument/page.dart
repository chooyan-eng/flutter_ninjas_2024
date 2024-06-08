import 'package:flutter/material.dart';
import 'package:flutter_ninjas_2024/component/code_container.dart';
import 'package:flutter_ninjas_2024/component/list_item.dart';
import 'package:gap/gap.dart';

class UsingArgumentPage extends StatelessWidget {
  const UsingArgumentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Option 1: Using arguments'),
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
            const Text(
              'Pros',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
              ),
            ),
            const Gap(16),
            ListItem.rich(const [
              '',
              'straightforward',
              ' and easy to understand',
            ]),
            const Gap(32),
            const Text(
              'Cons',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
              ),
            ),
            const Gap(16),
            ListItem.rich(const [
              'need to write the same code multiple times',
              ' if we need multiple TinyClock',
            ]),
            const Gap(16),
            ListItem.rich(const [
              'need "prop drilling"',
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
