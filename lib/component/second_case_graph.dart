import 'package:flutter/material.dart';
import 'package:flutter_ninjas_2024/main.dart';
import 'package:graph_your_widget_tree/graph_your_widget_tree.dart';

class SecondCaseGraph extends StatelessWidget {
  const SecondCaseGraph({super.key});

  @override
  Widget build(BuildContext context) {
    return Graph(
      root: WidgetEntry.single(
        name: 'MyApp',
        child: WidgetEntry.multiple(
          name: 'Stack',
          children: [
            WidgetEntry.leaf(
              name: 'TinyClock',
              type: WidgetAppearance.focused,
            ),
            WidgetEntry.single(
              name: ' ',
              child: WidgetEntry.multiple(
                name: ' ',
                children: [
                  WidgetEntry.leaf(
                    name: ' ',
                  ),
                  WidgetEntry.leaf(
                    name: 'This Page',
                    type: WidgetAppearance.focusedAccent,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
