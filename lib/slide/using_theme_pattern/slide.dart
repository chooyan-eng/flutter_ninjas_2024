import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_ninjas_2024/slide/using_theme_pattern/page.dart';

class UsingThemePatternSlide extends FlutterDeckSlideWidget {
  const UsingThemePatternSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/using-theme-pattern',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const UsingThemePatternPage(),
    );
  }
}
