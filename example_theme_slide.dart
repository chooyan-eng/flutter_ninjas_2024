import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class ExampleThemeSlide extends FlutterDeckSlideWidget {
  const ExampleThemeSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/example-theme',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const Placeholder(),
    );
  }
}
