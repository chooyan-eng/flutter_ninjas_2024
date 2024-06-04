import 'package:flutter/material.dart';
import 'package:flutter_ninjas_2024/component/list_item.dart';
import 'package:flutter_ninjas_2024/main.dart';
import 'package:gap/gap.dart';
import 'package:graph_your_widget_tree/graph_your_widget_tree.dart';

class OfExamplePage extends StatefulWidget {
  const OfExamplePage({super.key});

  @override
  State<OfExamplePage> createState() => _OfExamplePageState();
}

class _OfExamplePageState extends State<OfExamplePage> {
  String? _selected;

  @override
  Widget build(BuildContext context) {
    WidgetAppearance? typeOf(String id) {
      if (_selected == null) {
        return null;
      }

      if (_selected!.length != id.length) {
        return null;
      }

      if (_selected!.startsWith('-')) {
        return _selected == id
            ? WidgetAppearance.errorFocusedNode
            : int.parse(_selected!) > int.parse(id)
                ? WidgetAppearance.errorNode
                : null;
      }

      return int.parse(_selected!) >= int.parse(id)
          ? WidgetAppearance.nodeFocused
          : null;
    }

    WidgetAppearance? typeOfNavigator() {
      if (_selected == null || _selected!.startsWith('-')) {
        return null;
      }
      return WidgetAppearance.focused;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Example: Navigator.of(context)'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.all(64),
        child: Row(
          children: [
            Flexible(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListItem.rich(
                    const [
                      '',
                      'Navigator.of(context) looks up the ancestors',
                      ' on the element tree starting with a given',
                      ' BuildContext (Element).',
                    ],
                  ),
                  const Gap(64),
                  Text(
                    'implementation of Navigator.of()',
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.purple, width: 4),
                        color: Colors.white,
                      ),
                      padding: const EdgeInsets.all(16),
                      child: SingleChildScrollView(
                        child: Text.rich(
                          highlighter.highlight(_code),
                          style: const TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 2,
              child: Center(
                child: Column(
                  children: [
                    Text(
                      'Element Tree',
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall!
                          .copyWith(color: Colors.orange),
                    ),
                    const Gap(32),
                    Expanded(
                      child: Graph(
                        onTap: (entry) {
                          final key = entry.key as ValueKey<String>;
                          if (key.value.isEmpty) {
                            return;
                          } else {
                            setState(() {
                              _selected = key.value;
                            });
                          }
                        },
                        root: WidgetEntry.single(
                          key: const ValueKey('-2000'),
                          type: typeOf('-2000'),
                          name: 'Element of\nProviderScope',
                          child: WidgetEntry.single(
                            key: const ValueKey('-1000'),
                            type: typeOf('-1000'),
                            name: 'Element of\nMaterialApp',
                            child: WidgetEntry.multiple(
                              key: const ValueKey('1'),
                              type: typeOfNavigator(),
                              name: 'Element of\nNavigator',
                              children: [
                                WidgetEntry.single(
                                  key: const ValueKey('10'),
                                  type: typeOf('10'),
                                  name: 'Element of\nAppBar',
                                  child: WidgetEntry.leaf(
                                    key: const ValueKey('20'),
                                    type: typeOf('20'),
                                    name: 'Element of\nListPage',
                                  ),
                                ),
                                WidgetEntry.multiple(
                                  key: const ValueKey('100'),
                                  type: typeOf('100'),
                                  name: 'Element of\nIndexedStack',
                                  children: [
                                    WidgetEntry.leaf(
                                      key: const ValueKey('1000'),
                                      type: typeOf('1000'),
                                      name: 'Element of\nDetailPage',
                                    ),
                                    WidgetEntry.single(
                                      key: const ValueKey('200'),
                                      type: typeOf('200'),
                                      name: 'Element of\nDialog',
                                      child: WidgetEntry.leaf(
                                        key: const ValueKey('300'),
                                        type: typeOf('300'),
                                        name: 'Element of\nScaffold',
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

const _code = '''
static NavigatorState of(
    BuildContext context, {
    bool rootNavigator = false,
}) {
    NavigatorState? navigator;
    if (context is StatefulElement && context.state is NavigatorState) {
        navigator = context.state as NavigatorState;
    }
    if (rootNavigator) {
        navigator = context.findRootAncestorStateOfType<NavigatorState>() ?? navigator;
    } else {
        navigator = navigator ?? context.findAncestorStateOfType<NavigatorState>();
    }

    return navigator!;
}''';
