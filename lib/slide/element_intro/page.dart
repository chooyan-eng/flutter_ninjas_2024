import 'package:flutter/material.dart';
import 'package:flutter_ninjas_2024/component/list_item.dart';
import 'package:flutter_ninjas_2024/main.dart';
import 'package:gap/gap.dart';

class ElementIntroPage extends StatelessWidget {
  const ElementIntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Element / BuildContext'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(32),
            Text(
              'What is Element',
              style: Theme.of(context).textTheme.labelLarge!.copyWith(
                    decoration: TextDecoration.underline,
                  ),
            ),
            const Gap(32),
            ListItem.rich(const [
              '',
              'Element',
              ' is',
              ' an instance',
              ' of Widget',
            ]),
            const Gap(32),
            ListItem.rich(const [
              'Every single widget creates its associated Element by',
              ' createElement()',
            ]),
            const Gap(32),
            ListItem.rich(const [
              'Element preserves',
              ' the reference to its parent',
              ' and',
              ' the logic to visit its child(ren)',
            ]),
            const Gap(64),
            Text(
              'What is BuildContext',
              style: Theme.of(context).textTheme.labelLarge!.copyWith(
                    decoration: TextDecoration.underline,
                  ),
            ),
            const Gap(32),
            ListItem.rich(const [
              '',
              'BuildContext',
              ' is',
              ' an interface for us',
              ' to use Element\'s functionality',
            ]),
            const Gap(32),
            Text(
              'Definision of Element class',
              style: Theme.of(context).textTheme.labelSmall,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Theme.of(context).colorScheme.primary,
                  width: 8,
                ),
                color: Colors.white,
              ),
              padding: const EdgeInsets.all(16),
              child: Text.rich(
                highlighter.highlight(
                  'abstract class Element extends DiagnosticableTree implements BuildContext {',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
