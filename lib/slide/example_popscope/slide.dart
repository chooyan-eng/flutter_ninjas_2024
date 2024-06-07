import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_ninjas_2024/slide/example_popscope/page.dart';

class PopscopeSlide extends FlutterDeckSlideWidget {
  const PopscopeSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/popscope',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const PopscopePage(),
    );
  }
}
