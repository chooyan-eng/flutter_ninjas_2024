import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intersperse/intersperse.dart';

class InsideWidgetLeft extends StatelessWidget {
  const InsideWidgetLeft({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: IntrinsicWidth(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Center(
                child: Text(
                  'In reality however...',
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                        decoration: TextDecoration.underline,
                      ),
                ),
              ),
              const Gap(64),
              ...<Widget>[
                const Text('- Widgets DON\'T have a reference to parent'),
                const Text('- Widgets DON\'T have references to children'),
                const Text('- Widgets DON\'T form a tree'),
              ].intersperse(const Gap(32)),
              const Gap(120),
              Center(
                child: Text(
                  'So, who does?',
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .copyWith(color: Theme.of(context).colorScheme.primary),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
