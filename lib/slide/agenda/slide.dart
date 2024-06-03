import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_ninjas_2024/slide/agenda/page.dart';

class AgendaSlide extends FlutterDeckSlideWidget {
  final int? highlightedIndex;

  AgendaSlide(this.highlightedIndex)
      : super(
          configuration: FlutterDeckSlideConfiguration(
            route: '/agenda_$highlightedIndex',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => AgendaPage(
        highLighted: highlightedIndex,
      ),
    );
  }
}
