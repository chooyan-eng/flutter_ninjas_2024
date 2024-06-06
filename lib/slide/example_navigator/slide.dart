import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_ninjas_2024/slide/example_navigator/page.dart';

class ExampleNavigatorSlide extends FlutterDeckSlideWidget {
  const ExampleNavigatorSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/example-navigator',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const ExampleNavigatorPage(),
    );
  }
}
