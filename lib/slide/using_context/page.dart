import 'package:flutter/material.dart';
import 'package:flutter_ninjas_2024/component/code_container.dart';
import 'package:flutter_ninjas_2024/component/cons.dart';
import 'package:flutter_ninjas_2024/component/list_item.dart';
import 'package:flutter_ninjas_2024/component/pros.dart';
import 'package:flutter_ninjas_2024/main.dart';
import 'package:gap/gap.dart';
import 'package:graph_your_widget_tree/graph_your_widget_tree.dart';

class UsingContextPage extends StatelessWidget {
  const UsingContextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Option 2: Use findAncestorStateOfType<T>()'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Row(
          children: [
            const Expanded(
              flex: 2,
              child: _Graph(),
            ),
            const Gap(64),
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CodeContainer(_codeUser),
                  const Gap(16),
                  const CodeContainer(_codeOperator),
                  const Gap(32),
                  const Pros(),
                  const Gap(16),
                  ListItem.rich(const [
                    '',
                    'No extra dependencies',
                  ]),
                  const Gap(16),
                  ListItem.rich(const [
                    'Everything done',
                    ' on the widget tree',
                  ]),
                  const Gap(32),
                  const Cons(),
                  const Gap(16),
                  ListItem.rich(const [
                    '',
                    'Boilerplate code',
                    ' to prepare .of(context) method',
                  ]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Graph extends StatelessWidget {
  const _Graph();

  @override
  Widget build(BuildContext context) {
    return Graph(
      root: WidgetEntry.multiple(
        name: 'MyApp',
        type: WidgetAppearance.focused,
        children: [
          WidgetEntry.leaf(
            name: 'TinyClock',
            type: WidgetAppearance.nodeFocused,
          ),
          WidgetEntry.single(
            name: ' ',
            type: WidgetAppearance.nodeFocusedAccent,
            child: WidgetEntry.multiple(
              name: ' ',
              type: WidgetAppearance.nodeFocusedAccent,
              children: [
                WidgetEntry.leaf(
                  name: ' ',
                ),
                WidgetEntry.leaf(
                  name: 'This Page',
                  type: WidgetAppearance.nodeFocusedAccent,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

const _codeUser = '''
class MyApp extends StatefulWidget {
    static MyAppState of(BuildContext context) {
        return context.findAncestorStateOfType<MyAppState>();
    } 
},''';

const _codeOperator = '''
onTap: (ClockTheme newTheme) {
    MyApp.of(context).update(newTheme);
}''';
