import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_ninjas_2024/slide/example_theme/page.dart';

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
      builder: (context) => const ExampleThemePage(),
    );
  }
}
