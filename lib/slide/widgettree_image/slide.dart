import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_ninjas_2024/slide/widgettree_image/widgettree_image_left.dart';
import 'package:flutter_ninjas_2024/slide/widgettree_image/widgettree_image_right.dart';

class WidgettreeImageSlide extends FlutterDeckSlideWidget {
  const WidgettreeImageSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/widgettree-image',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.split(
      leftBuilder: (context) => const WidgettreeImageLeft(),
      rightBuilder: (context) => const WidgettreeImageRight(),
    );
  }
}
