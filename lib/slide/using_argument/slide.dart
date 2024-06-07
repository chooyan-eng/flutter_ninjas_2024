import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_ninjas_2024/slide/using_argument/page.dart';

class UsingArgumentSlide extends FlutterDeckSlideWidget {
  const UsingArgumentSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/using-argument',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const UsingArgumentPage(),
    );
  }
}
