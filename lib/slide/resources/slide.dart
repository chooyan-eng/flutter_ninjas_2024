import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_ninjas_2024/slide/resources/page.dart';

class ResourcesSlide extends FlutterDeckSlideWidget {
  const ResourcesSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/resources',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const ResourcesPage(),
    );
  }
}
