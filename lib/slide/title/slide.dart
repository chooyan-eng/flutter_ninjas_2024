import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class TitleSlide extends FlutterDeckSlideWidget {
  const TitleSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/title-slide',
            title: 'Title slide',
            footer: FlutterDeckFooterConfiguration(showFooter: false),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.title(
      title: 'Maximizing the Power of the Widget Tree',
      subtitle: 'Enhance Your Flutter Apps Without Packages',
      speakerInfoBuilder: (context) {
        return const FlutterDeckSpeakerInfoWidget(
          speakerInfo: FlutterDeckSpeakerInfo(
            description: 'Freelance Flutter Developer',
            imagePath: 'assets/images/me_photo.jpeg',
            name: 'Tsuyoshi Chujo',
            socialHandle: '@tsuyoshi_chujo',
          ),
        );
      },
    );
  }
}
