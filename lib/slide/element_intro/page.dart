import 'package:flutter/material.dart';
import 'package:flutter_ninjas_2024/component/code_container.dart';
import 'package:flutter_ninjas_2024/component/list_item.dart';
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
              'Element',
              style: Theme.of(context).textTheme.labelLarge!.copyWith(
                    decoration: TextDecoration.underline,
                  ),
            ),
            const Gap(16),
            ListItem.rich(const [
              '',
              'Element is an instantiation',
              ' of a Widget',
            ]),
            const Gap(32),
            ListItem.rich(const [
              'Every single widget creates its associated Element via',
              ' createElement()',
            ]),
            const Gap(32),
            ListItem.rich(const [
              'Element preserves',
              ' the reference to its parent',
              ' and',
              ' the logic to visit its child(ren)',
            ]),
            const Gap(32),
            ListItem.rich(const [
              '',
              'Element forms a tree',
              ' in reality',
            ]),
            const Gap(32),
            Text(
              'BuildContext',
              style: Theme.of(context).textTheme.labelLarge!.copyWith(
                    decoration: TextDecoration.underline,
                  ),
            ),
            const Gap(16),
            ListItem.rich(const [
              '',
              'BuildContext',
              ' is',
              ' an interface',
              ' providing Element\'s functionality based on the tree',
            ]),
            const Gap(32),
            Text(
              'Definision of Element class',
              style: Theme.of(context).textTheme.labelSmall,
            ),
            const CodeContainer(
              'abstract class Element extends DiagnosticableTree implements BuildContext {',
            ),
          ],
        ),
      ),
    );
  }
}
