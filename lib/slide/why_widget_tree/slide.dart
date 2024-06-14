import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_ninjas_2024/slide/why_widget_tree/page.dart';

class WhyWidgetTreeSlide extends FlutterDeckSlideWidget {
  const WhyWidgetTreeSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/why-widget-tree',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const WhyWidgetTreePage(),
    );
  }
}
