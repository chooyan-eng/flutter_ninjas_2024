import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class ElementDoesSlide extends FlutterDeckSlideWidget {
  const ElementDoesSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/element-does',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.bigFact(
      title: 'Element',
      subtitle: 'Element, a.k.a. BuildContext, forms "Element tree"',
    );
  }
}
