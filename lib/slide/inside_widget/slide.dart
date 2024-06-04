import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_ninjas_2024/slide/inside_widget/inside_widget_left.dart';
import 'package:flutter_ninjas_2024/slide/inside_widget/inside_widget_right.dart';

class InsideWidgetSlide extends FlutterDeckSlideWidget {
  const InsideWidgetSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/inside-widget',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.split(
      leftBuilder: (context) => const InsideWidgetLeft(),
      rightBuilder: (context) => const InsideWidgetRight(),
    );
  }
}
