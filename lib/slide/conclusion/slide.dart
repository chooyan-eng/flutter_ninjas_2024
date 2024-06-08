import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_ninjas_2024/component/list_item.dart';
import 'package:gap/gap.dart';
import 'package:intersperse/intersperse.dart';

class ConclusionSlide extends FlutterDeckSlideWidget {
  const ConclusionSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/conclusion',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => Scaffold(
        appBar: AppBar(
          title: const Text('Conclusion'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 120),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListItem.rich(
                  const [
                    '',
                    'Widget tree',
                    ', or Element tree in other words,',
                    ' is powerful enough',
                    ' to solve our frequently facing problems.',
                  ],
                ),
                ListItem.rich(
                  const [
                    'Flutter provides us a lot of samples to know',
                    ' how we can maximize the power of the widget tree.',
                  ],
                ),
                ListItem.rich(
                  const [
                    'We always have',
                    ' multiple options.',
                    ' Choose the most relevant one for your use case.',
                  ],
                ),
              ].intersperse(const Gap(64)).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
