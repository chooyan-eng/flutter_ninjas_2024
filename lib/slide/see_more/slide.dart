import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_ninjas_2024/slide/see_more/page.dart';

class SeeMoreSlide extends FlutterDeckSlideWidget {
  const SeeMoreSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/see-more',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const SeeMorePage(),
    );
  }
}
