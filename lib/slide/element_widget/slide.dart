import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_ninjas_2024/slide/element_widget/page.dart';

class WidgetElementSlide extends FlutterDeckSlideWidget {
  const WidgetElementSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/widget-element',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const ElementWidgetPage(),
    );
  }
}
