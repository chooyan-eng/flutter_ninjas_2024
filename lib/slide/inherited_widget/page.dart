import 'package:flutter/material.dart';
import 'package:flutter_ninjas_2024/component/code_container.dart';
import 'package:flutter_ninjas_2024/component/list_item.dart';
import 'package:flutter_ninjas_2024/main.dart';
import 'package:gap/gap.dart';
import 'package:graph_your_widget_tree/graph_your_widget_tree.dart';

class InheritedWidgetPage extends StatelessWidget {
  const InheritedWidgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('InheritedWidget'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Row(
          children: [
            const Flexible(
              flex: 2,
              child: SizedBox(
                height: double.infinity,
                width: double.infinity,
                child: _ThemeGraph(),
              ),
            ),
            const Gap(32),
            Flexible(
              flex: 3,
              child: Column(
                children: [
                  ListItem.rich(
                    const [
                      'findAncestorStateOfType<T>() looks up ancestors',
                      ' one by one, O(N)',
                    ],
                  ),
                  const Gap(16),
                  ListItem.rich(
                    const [
                      'dependOnInheritedWidgetOfExactType<T>() returns one',
                      ' from direct references, O(1).',
                    ],
                  ),
                  const Gap(16),
                  const CodeContainer(
                    'PersistentHashMap<Type, InheritedElement>? _inheritedElements;',
                  ),
                  const Gap(32),
                  ListItem.rich(
                    const [
                      'Because key of _inheritedElements is',
                      ' Type',
                      ', dependOnInheritedWidgetOfExactType<T>() can only find',
                      ' the closest InheritedElement.',
                    ],
                  ),
                  const Gap(32),
                  ListItem.rich(
                    const [
                      'This is why',
                      ' Provider package can\'t have multiple state objects of the same type.',
                    ],
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

class _ThemeGraph extends StatefulWidget {
  const _ThemeGraph();

  @override
  State<_ThemeGraph> createState() => _ThemeGraphState();
}

class _ThemeGraphState extends State<_ThemeGraph> {
  int? _selected;
  List<int> _highlighted = [];

  static final _highlights = <List<int>>[
    [],
    [0],
    [0, 1],
    [0, 2],
    [0, 1],
    [0, 1],
    [0, 1],
    [0, 6],
    [0, 1],
  ];

  @override
  Widget build(BuildContext context) {
    WidgetAppearance? typeOf(int id) {
      if (_selected == null) {
        return null;
      }

      if (_selected == id) {
        return WidgetAppearance.focused;
      }

      if (_highlighted.contains(id)) {
        return WidgetAppearance.focusedAccent;
      }

      return null;
    }

    return Graph(
      onTap: (entry) {
        final key = entry.key as ValueKey<int>;
        setState(() {
          _selected = key.value;
          _highlighted = _selected == null ? [] : _highlights[_selected!];
        });
      },
      root: WidgetEntry.single(
        key: const ValueKey(0),
        type: typeOf(0),
        name: 'MediaQuery',
        child: WidgetEntry.single(
          key: const ValueKey(1),
          type: typeOf(1),
          name: 'DefaultTextStyle',
          child: WidgetEntry.multiple(
            key: const ValueKey(8),
            type: typeOf(8),
            name: ' ',
            children: [
              WidgetEntry.single(
                key: const ValueKey(2),
                type: typeOf(2),
                name: 'DefaultTextStyle',
                child: WidgetEntry.leaf(
                  key: const ValueKey(3),
                  type: typeOf(3),
                  name: ' ',
                ),
              ),
              WidgetEntry.multiple(
                key: const ValueKey(4),
                type: typeOf(4),
                name: ' ',
                children: [
                  WidgetEntry.leaf(
                    type: typeOf(5),
                    key: const ValueKey(5),
                    name: ' ',
                  ),
                  WidgetEntry.single(
                    type: typeOf(6),
                    key: const ValueKey(6),
                    name: 'DefaultTextStyle',
                    child: WidgetEntry.leaf(
                      key: const ValueKey(7),
                      type: typeOf(7),
                      name: ' ',
                    ),
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

const _code = '''
abstract class Element extends DiagnosticableTree implements BuildContext {
    PersistentHashMap<Type, InheritedElement>? _inheritedElements;
}''';
