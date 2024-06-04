import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_ninjas_2024/slide/of_example/page.dart';

class OfExampleSlide extends FlutterDeckSlideWidget {
  const OfExampleSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/of-example',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const OfExamplePage(),
    );
  }
}
