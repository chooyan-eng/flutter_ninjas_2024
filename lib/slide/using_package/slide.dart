import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class UsingPackageSlide extends FlutterDeckSlideWidget {
  const UsingPackageSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/using-package',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const Placeholder(),
    );
  }
}
