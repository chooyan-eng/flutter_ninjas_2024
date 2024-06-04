import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class ElementIntroSlide extends FlutterDeckSlideWidget {
  const ElementIntroSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/element-intro',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const Placeholder(),
    );
  }
}
