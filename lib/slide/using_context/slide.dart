import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class UsingContextSlide extends FlutterDeckSlideWidget {
  const UsingContextSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/using-context',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const Placeholder(),
    );
  }
}
