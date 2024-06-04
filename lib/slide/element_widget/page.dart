import 'package:flutter/material.dart';
import 'package:flutter_ninjas_2024/main.dart';
import 'package:gap/gap.dart';
import 'package:graph_your_widget_tree/graph_your_widget_tree.dart';

class ElementWidgetPage extends StatefulWidget {
  const ElementWidgetPage({super.key});

  @override
  State<ElementWidgetPage> createState() => _ElementWidgetPageState();
}

class _ElementWidgetPageState extends State<ElementWidgetPage> {
  int? _selected;

  void _updatedSelected(int? index) {
    setState(() {
      _selected = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget tree and associated Element tree'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Row(
          children: [
            Expanded(
              child: _WidgetTree(
                onHover: _updatedSelected,
                highlightedItem: _selected,
              ),
            ),
            Expanded(
              child: _ElementTree(
                onHover: _updatedSelected,
                highlightedItem: _selected,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _WidgetTree extends StatelessWidget {
  const _WidgetTree({
    required this.onHover,
    this.highlightedItem,
  });

  final ValueChanged<int?> onHover;
  final int? highlightedItem;

  @override
  Widget build(BuildContext context) {
    WidgetAppearance typeOf(int item) {
      return highlightedItem == item
          ? WidgetAppearance.focusedNoConnection
          : WidgetAppearance.noConnection;
    }

    return Column(
      children: [
        Text(
          'Widget Tree',
          style: Theme.of(context).textTheme.labelLarge!.copyWith(
                decoration: TextDecoration.underline,
                color: Colors.purple,
              ),
        ),
        const Gap(32),
        Expanded(
          child: Graph(
            onHover: (entry) {
              final item = (entry?.key as ValueKey<int>?)?.value;
              onHover(item);
            },
            root: WidgetEntry.single(
              key: const ValueKey(0),
              type: typeOf(0),
              name: 'MaterialApp',
              child: WidgetEntry.multiple(
                key: const ValueKey(1),
                type: typeOf(1),
                name: 'Scaffold',
                children: [
                  WidgetEntry.single(
                    key: const ValueKey(2),
                    type: typeOf(2),
                    name: 'AppBar',
                    child: WidgetEntry.leaf(
                      key: const ValueKey(3),
                      type: typeOf(3),
                      name: 'Text',
                    ),
                  ),
                  WidgetEntry.multiple(
                    key: const ValueKey(4),
                    type: typeOf(4),
                    name: 'Column',
                    children: [
                      WidgetEntry.leaf(
                        key: const ValueKey(5),
                        type: typeOf(5),
                        name: 'Text',
                      ),
                      WidgetEntry.single(
                        key: const ValueKey(6),
                        type: typeOf(6),
                        name: 'Elevated\nButton',
                        child: WidgetEntry.leaf(
                          key: const ValueKey(7),
                          type: typeOf(7),
                          name: 'Text',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        const Gap(32),
      ],
    );
  }
}

class _ElementTree extends StatelessWidget {
  const _ElementTree({
    required this.onHover,
    this.highlightedItem,
  });

  final ValueChanged<int?> onHover;
  final int? highlightedItem;

  @override
  Widget build(BuildContext context) {
    WidgetAppearance? typeOf(int item) {
      return highlightedItem == item ? WidgetAppearance.focused : null;
    }

    return Column(
      children: [
        Text(
          'Element Tree',
          style: Theme.of(context).textTheme.labelLarge!.copyWith(
                decoration: TextDecoration.underline,
                color: Colors.orange,
              ),
        ),
        const Gap(32),
        Expanded(
          child: Graph(
            onHover: (entry) {
              final item = (entry?.key as ValueKey<int>?)?.value;
              onHover(item);
            },
            root: WidgetEntry.single(
              key: const ValueKey(0),
              type: typeOf(0),
              name: 'Stateful\nElement',
              child: WidgetEntry.multiple(
                key: const ValueKey(1),
                type: typeOf(1),
                name: 'Stateful\nElement',
                children: [
                  WidgetEntry.single(
                    key: const ValueKey(2),
                    type: typeOf(2),
                    name: 'Stateful\nElement',
                    child: WidgetEntry.leaf(
                      key: const ValueKey(3),
                      type: typeOf(3),
                      name: 'Stateless\nElement',
                    ),
                  ),
                  WidgetEntry.multiple(
                    key: const ValueKey(4),
                    type: typeOf(4),
                    name: 'MultiChild\nRenderObject\nElement',
                    children: [
                      WidgetEntry.leaf(
                        key: const ValueKey(5),
                        type: typeOf(5),
                        name: 'Stateless\nElement',
                      ),
                      WidgetEntry.single(
                        key: const ValueKey(6),
                        type: typeOf(6),
                        name: 'Stateful\nElement',
                        child: WidgetEntry.leaf(
                          key: const ValueKey(7),
                          type: typeOf(7),
                          name: 'Stateless\nElement',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        const Gap(32),
      ],
    );
  }
}
