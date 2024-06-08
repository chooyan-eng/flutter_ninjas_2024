import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_ninjas_2024/slide/using_package/page.dart';

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
      builder: (context) => const UsingPackagePage(),
    );
  }
}
