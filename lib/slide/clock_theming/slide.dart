import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_ninjas_2024/slide/clock_theming/page.dart';

class ClockThemingSlide extends FlutterDeckSlideWidget {
  const ClockThemingSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/clock-theming',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const ClockThemingPage(),
    );
  }
}
