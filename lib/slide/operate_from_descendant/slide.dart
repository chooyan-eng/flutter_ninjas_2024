import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_ninjas_2024/slide/operate_from_descendant/page.dart';

class OperateFromDescendantSlide extends FlutterDeckSlideWidget {
  const OperateFromDescendantSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/operate-from-descendant',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const OperateFromDescendantPage(),
    );
  }
}
