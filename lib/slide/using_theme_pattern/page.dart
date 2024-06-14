import 'package:flutter/material.dart';
import 'package:flutter_ninjas_2024/component/clock_theme.dart';
import 'package:flutter_ninjas_2024/component/code_container.dart';
import 'package:flutter_ninjas_2024/component/cons.dart';
import 'package:flutter_ninjas_2024/component/list_item.dart';
import 'package:flutter_ninjas_2024/component/pros.dart';
import 'package:flutter_ninjas_2024/component/tiny_clock.dart';
import 'package:gap/gap.dart';

class UsingThemePatternPage extends StatelessWidget {
  const UsingThemePatternPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            const Text('Option 2: Use dependOnInheritedWidgetOfExactType<T>()'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Row(
          children: [
            const Flexible(
              flex: 2,
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: CodeContainer(_code),
                    ),
                    Gap(32),
                    SizedBox(
                      width: double.infinity,
                      child: CodeContainer(_codeClock),
                    ),
                  ],
                ),
              ),
            ),
            const Gap(32),
            Flexible(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Pros(),
                  const Gap(16),
                  ListItem.rich(const [
                    'Write',
                    ' once',
                    ' and apply to',
                    ' all descendants'
                  ]),
                  const Gap(16),
                  ListItem.rich(const [
                    'No',
                    ' prop drilling',
                    ' required',
                  ]),
                  const Gap(16),
                  ListItem.rich(const [
                    'Easy to make a container with',
                    ' relevant theme',
                  ]),
                  const Gap(16),
                  Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(32),
                          color: Colors.black,
                          child: ClockTheme(
                            const ClockThemeData(
                              backgroundColor: Colors.black,
                              borderColor: Colors.white,
                              buttonColor: Colors.white,
                              textColor: Colors.white,
                            ),
                            child: DefaultTextStyle(
                              style: DefaultTextStyle.of(context)
                                  .style
                                  .copyWith(fontSize: 24),
                              child: Column(
                                children: [
                                  const SizedBox(
                                    width: 160,
                                    child: TinyClock(),
                                  ),
                                  const Gap(16),
                                  Text(
                                    'Night mode clock container',
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall!
                                        .copyWith(
                                          color: Colors.white,
                                        ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        const Gap(32),
                        const CodeContainer(_codeNightClock),
                      ],
                    ),
                  ),
                  const Gap(32),
                  const Cons(),
                  const Gap(16),
                  ListItem.rich(const [
                    'Difficult to understand',
                    ' who and how the theme is applied',
                    ', especially when the widget tree is complex',
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

const _code = '''
static ClockThemeData of(
    BuildContext context,
) {
    final theme = context.dependOnInheritedWidgetOfExactType<ClockTheme>();
    return theme?.themeData ?? const ClockThemeData();
}''';

const _codeClock = '''
Widget build(BuildContext context) {
    final theme = ClockTheme.of(context);
    Container(
        color: theme.backgroundColor,
    ),
}''';

const _codeNightClock = '''
NightModeContainer(
    child: TinyClock(),
),''';
