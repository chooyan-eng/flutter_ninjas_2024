import 'package:flutter/material.dart';
import 'package:graph_your_widget_tree/graph_your_widget_tree.dart';

class WidgettreeImageLeft extends StatelessWidget {
  const WidgettreeImageLeft({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Graph(
        root: WidgetEntry.single(
          name: 'MaterialApp',
          child: WidgetEntry.multiple(
            name: 'Scaffold',
            children: [
              WidgetEntry.single(
                name: 'AppBar',
                child: WidgetEntry.leaf(name: 'Text'),
              ),
              WidgetEntry.multiple(
                name: 'Column',
                children: [
                  WidgetEntry.leaf(name: 'Text'),
                  WidgetEntry.single(
                    name: 'Elevated\nButton',
                    child: WidgetEntry.leaf(name: 'Text'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
