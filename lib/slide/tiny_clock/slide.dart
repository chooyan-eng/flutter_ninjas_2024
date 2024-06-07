import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_ninjas_2024/slide/tiny_clock/page.dart';

class TinyClockSlide extends FlutterDeckSlideWidget {
  const TinyClockSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/tiny-clock',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const TinyClockPage(),
    );
  }
}
