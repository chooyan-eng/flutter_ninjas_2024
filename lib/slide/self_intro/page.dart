import 'package:flutter/material.dart';
import 'package:flutter_ninjas_2024/component/link.dart';
import 'package:flutter_ninjas_2024/component/list_item.dart';
import 'package:gap/gap.dart';
import 'package:intersperse/intersperse.dart';

class SelfIntroPage extends StatelessWidget {
  const SelfIntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About me'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Gap(32),
            ListItem.text('Tsuyoshi Chujo : Chooyan'),
            const Gap(32),
            ListItem.text('Freelance Flutter Developer in Japan'),
            const Gap(32),
            ListItem.rich(const [
              'Developing',
              ' Flutter apps',
              ', and providing',
              ' technical advices',
            ]),
            const Row(
              children: [
                Gap(48),
                _Logo(
                  label: 'Developing',
                  path: 'assets/images/livmap.png',
                ),
                Gap(64),
                _Logo(
                  label: 'Supporting',
                  path: 'assets/images/studyplus.png',
                ),
              ],
            ),
            const Gap(32),
            ListItem.rich(const [
              'Author of',
              ' crop_your_image',
              ', a Flutter package providing',
              ' Crop',
              ' widget for cropping images feature',
            ]),
            const Row(
              children: [
                Gap(48),
                Link('https://pub.dev/packages/crop_your_image'),
              ],
            ),
            const Gap(32),
            ListItem.rich(const [
              '',
              'Love Widget Tree!',
            ]),
          ].intersperse(const Gap(12)).toList(),
        ),
      ),
    );
  }
}

class _Logo extends StatelessWidget {
  const _Logo({
    required this.label,
    required this.path,
  });

  final String label;
  final String path;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            label,
            style: Theme.of(context).textTheme.labelSmall,
          ),
          Expanded(
            child: Image(image: AssetImage(path)),
          ),
        ],
      ),
    );
  }
}
