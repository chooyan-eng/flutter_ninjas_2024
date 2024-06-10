import 'package:flutter/material.dart';
import 'package:flutter_ninjas_2024/component/list_item.dart';
import 'package:flutter_ninjas_2024/main.dart';
import 'package:gap/gap.dart';
import 'package:graph_your_widget_tree/graph_your_widget_tree.dart';

class ExampleNavigatorPage extends StatelessWidget {
  const ExampleNavigatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Row(
          children: [
            Flexible(
              flex: 3,
              child: Column(
                children: [
                  ListItem.rich(const [
                    'Navigator provides',
                    ' static .of() method',
                    ' to retrieve a relevant NavigatorState.',
                  ]),
                  const Gap(16),
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.purple,
                        width: 4,
                      ),
                      color: Colors.white,
                    ),
                    child: Text.rich(
                      highlighter.highlight(_code),
                      style: const TextStyle(fontSize: 24),
                    ),
                  ),
                  const Gap(32),
                  ListItem.rich(const [
                    'BuildContext has',
                    ' findAncestorStateOfType<T>() method',
                    ' that searchs for',
                    ' State of the type T',
                    ' by traversing up the tree.',
                  ]),
                  const Gap(32),
                  ListItem.rich(const [
                    'Providing',
                    ' static .of() method',
                    ' is a common pattern in Flutter.'
                  ]),
                ],
              ),
            ),
            const Gap(32),
            const Flexible(
              flex: 2,
              child: SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: _NavigatorGraph(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _NavigatorGraph extends StatelessWidget {
  const _NavigatorGraph();

  @override
  Widget build(BuildContext context) {
    return Graph(
      root: WidgetEntry.single(
        name: ' ',
        child: WidgetEntry.multiple(
          type: WidgetAppearance.focused,
          name: 'Navigator',
          children: [
            WidgetEntry.single(
              type: WidgetAppearance.nodeFocused,
              name: 'SomePage',
              child: WidgetEntry.leaf(
                name: ' ',
              ),
            ),
            WidgetEntry.multiple(
              type: WidgetAppearance.nodeFocused,
              name: ' ',
              children: [
                WidgetEntry.leaf(
                  name: ' ',
                ),
                WidgetEntry.single(
                  type: WidgetAppearance.nodeFocused,
                  name: ' ',
                  child: WidgetEntry.leaf(
                    type: WidgetAppearance.nodeFocused,
                    name: 'OtherPage',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

const _code = '''
static NavigatorState of() {
    ...
    navigator = navigator ?? context.findAncestorStateOfType<NavigatorState>();
    return navigator!;
}''';
