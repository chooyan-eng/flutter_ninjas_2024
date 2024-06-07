import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class AccessingAncestorSlide extends FlutterDeckSlideWidget {
  const AccessingAncestorSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/accessing-ancestor',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const Placeholder(),
    );
  }
}
