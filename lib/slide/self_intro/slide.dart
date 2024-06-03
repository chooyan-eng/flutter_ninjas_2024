import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_ninjas_2024/slide/self_intro/page.dart';

class SelfIntroSlide extends FlutterDeckSlideWidget {
  const SelfIntroSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/self-intro',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const SelfIntroPage(),
    );
  }
}
