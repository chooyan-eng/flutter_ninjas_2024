import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

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
      leftBuilder: (context) => const Placeholder(),
      rightBuilder: (context) => const Placeholder(),
    );
  }
}
