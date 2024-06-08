import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_ninjas_2024/slide/using_context/page.dart';

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
      builder: (context) => const UsingContextPage(),
    );
  }
}
