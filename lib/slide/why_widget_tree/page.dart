import 'package:flutter/material.dart';
import 'package:flutter_ninjas_2024/component/list_item.dart';
import 'package:gap/gap.dart';
import 'package:intersperse/intersperse.dart';

class WhyWidgetTreePage extends StatelessWidget {
  const WhyWidgetTreePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Why learning widget tree'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(64),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ListItem.rich(
              const [
                'To get',
                ' precise understanding for how Flutter works',
              ],
            ),
            ListItem.rich(
              const [
                'Precise understanding helps us',
                ' avoid overkilling issues',
                ' we face in our daily development',
              ],
            ),
            ListItem.rich(
              const [
                '',
                'Getting one more option',
                ', and choosing relevant one',
                ' for each problem',
                ' makes our app',
                ' more maintainable and testable',
              ],
            ),
          ].intersperse(const Gap(64)).toList(),
        ),
      ),
    );
  }
}
