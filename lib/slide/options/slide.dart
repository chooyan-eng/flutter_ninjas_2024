import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class OptionsSlide extends FlutterDeckSlideWidget {
  const OptionsSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/options',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.bigFact(
      title: 'So which option to use?',
      subtitle: 'It depends. They are "options" in the end.',
    );
  }
}
