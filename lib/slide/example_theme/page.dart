import 'package:flutter/material.dart';
import 'package:flutter_ninjas_2024/component/list_item.dart';
import 'package:flutter_ninjas_2024/main.dart';
import 'package:gap/gap.dart';
import 'package:graph_your_widget_tree/graph_your_widget_tree.dart';

class ExampleThemePage extends StatelessWidget {
  const ExampleThemePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Row(
          children: [
            Flexible(
              flex: 3,
              child: Column(
                children: [
                  ListItem.rich(
                    const [
                      '',
                      'Theme',
                      ' also provides',
                      ' static .of() method',
                      ' to retrieve relevant ThemeData preserved by Theme',
                    ],
                  ),
                  const Gap(16),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.purple,
                        width: 4,
                      ),
                      color: Colors.white,
                    ),
                    padding: const EdgeInsets.all(16),
                    child: Text.rich(
                      highlighter.highlight(_code),
                      style: const TextStyle(fontSize: 24),
                    ),
                  ),
                  const Gap(32),
                  ListItem.rich(
                    const [
                      'BuildContext has',
                      ' dependOnInheritedWidgetOfExactType<T>() method',
                      ' that returns',
                      ' InheritedWidget of type T',
                      ' from ancestors.',
                    ],
                  ),
                  const Gap(32),
                  ListItem.rich(
                    const [
                      'This also',
                      ' makes the InheritedWidget remember to rebuild the context',
                      ' when the InheritedWidget is rebuilt.',
                    ],
                  ),
                ],
              ),
            ),
            const Gap(32),
            const Flexible(
              flex: 2,
              child: SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: _ThemeGraph(),
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
  final List<int> _highlighted = [];

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
      root: WidgetEntry.single(
        name: ' ',
        child: WidgetEntry.multiple(
          type: WidgetAppearance.focusedAccent,
          name: 'Theme',
          children: [
            WidgetEntry.single(
              type: WidgetAppearance.focused,
              name: 'SomeWidget',
              child: WidgetEntry.leaf(
                name: ' ',
              ),
            ),
            WidgetEntry.multiple(
              name: ' ',
              children: [
                WidgetEntry.leaf(
                  name: ' ',
                ),
                WidgetEntry.single(
                  name: ' ',
                  child: WidgetEntry.leaf(
                    type: WidgetAppearance.focused,
                    name: 'OtherWidget',
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
static ThemeData of(BuildContext context) {
    final inheritedTheme = context.dependOnInheritedWidgetOfExactType<_InheritedTheme>();
    ...
    final theme = inheritedTheme?.theme.data ?? _kFallbackTheme;
}''';
