import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class AndMoreSlide extends FlutterDeckSlideWidget {
  const AndMoreSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/and-more',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.bigFact(
      title: '',
      subtitle: '',
    );
  }
}
