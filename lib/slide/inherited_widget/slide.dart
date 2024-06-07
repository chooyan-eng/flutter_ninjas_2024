import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_ninjas_2024/slide/inherited_widget/page.dart';

class InheritedWidgetSlide extends FlutterDeckSlideWidget {
  const InheritedWidgetSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/inherited-widget',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const InheritedWidgetPage(),
    );
  }
}
