import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intersperse/intersperse.dart';

class WidgettreeImageRight extends StatelessWidget {
  const WidgettreeImageRight({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: IntrinsicWidth(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Center(
                  child: Text(
                    'Widget tree?',
                    style: Theme.of(context).textTheme.labelLarge!.copyWith(
                          decoration: TextDecoration.underline,
                        ),
                  ),
                ),
                const Gap(64),
                ...<Widget>[
                  const Text('- Widgets form a widget tree'),
                  const Text('- Everything is a widget'),
                  const Text('- State is managed on the tree by default'),
                  const Text('- Rebuild is managed on the tree'),
                  const Text('- Layouts are calculated based on the tree'),
                ].intersperse(const Gap(32)),
                const Gap(64),
                const Text(
                  'Everything is done on the widget tree,'
                  ' especially on the relationship between "ancestors" and "descendants".',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
