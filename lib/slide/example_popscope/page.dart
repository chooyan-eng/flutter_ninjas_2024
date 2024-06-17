import 'package:flutter/material.dart';
import 'package:flutter_ninjas_2024/component/code_container.dart';
import 'package:flutter_ninjas_2024/component/list_item.dart';
import 'package:flutter_ninjas_2024/main.dart';
import 'package:gap/gap.dart';
import 'package:graph_your_widget_tree/graph_your_widget_tree.dart';

class PopscopePage extends StatelessWidget {
  const PopscopePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PopScope'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Row(
          children: [
            const Flexible(
              flex: 2,
              child: SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: _PopscopeGraph(),
              ),
            ),
            const Gap(64),
            Flexible(
              flex: 3,
              child: PopScope(
                child: Column(
                  children: [
                    ListItem.rich(const [
                      '',
                      'PopScope',
                      ' finds the closest ModalRoute and register PopEntry to manage its behavior.',
                    ]),
                    const Gap(16),
                    const CodeContainer(_code),
                    const Gap(32),
                    ListItem.text(
                      'PopScope is not necessarily a parent of Scaffold.',
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

class _PopscopeGraph extends StatelessWidget {
  const _PopscopeGraph({super.key});

  @override
  Widget build(BuildContext context) {
    return Graph(
      root: WidgetEntry.single(
        name: ' ',
        child: WidgetEntry.multiple(
          type: WidgetAppearance.focusedAccent,
          name: 'Navigator\n(ModalRoute)',
          children: [
            WidgetEntry.single(
              name: ' ',
              child: WidgetEntry.leaf(
                name: ' ',
              ),
            ),
            WidgetEntry.multiple(
              name: ' ',
              children: [
                WidgetEntry.leaf(
                  type: WidgetAppearance.focused,
                  name: 'PopScope',
                ),
                WidgetEntry.single(
                  name: ' ',
                  child: WidgetEntry.leaf(
                    name: ' ',
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
class _PopScopeState extends State<PopScope> implements PopEntry {
    @override
    void didChangeDependencies() {
        final ModalRoute<dynamic>? nextRoute = ModalRoute.of(context);
        if (nextRoute != _route) {
            _route?.registerPopEntry(this);
        }
    }
}''';
