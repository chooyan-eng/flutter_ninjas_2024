import 'package:flutter/material.dart';
import 'package:flutter_ninjas_2024/component/link.dart';
import 'package:gap/gap.dart';
import 'package:intersperse/intersperse.dart';
import 'package:url_launcher/url_launcher.dart';

class ResourcesPage extends StatelessWidget {
  const ResourcesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Resources')),
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Gap(32),
              ...<Widget>[
                const _Item(
                  url: 'https://hashnode.com/@chooyan-eng',
                  path: 'assets/images/hashnode.png',
                  description:
                      'Published articles in English mainly focusing on'
                      ' fundamentals of Flutter and packages.',
                ),
                const _Item(
                  url: 'https://github.com/chooyan-eng',
                  path: 'assets/images/github.png',
                  description:
                      'My open-source projects and so many practice Flutter projects.',
                ),
                const _Item(
                  url: 'https://zenn.dev/chooyan',
                  path: 'assets/images/zenn.png',
                  description: 'Articles and books written in Japanese,'
                      ' mainly focusing on mechanisms of Flutter and packages.',
                ),
              ].intersperse(const Gap(32)),
              const Gap(64),
            ],
          ),
        ),
      ),
    );
  }
}

class _Item extends StatelessWidget {
  const _Item({
    required this.url,
    required this.path,
    required this.description,
  });

  final String url;
  final String path;
  final String description;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        launchUrl(Uri.parse(url));
      },
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Image.asset(
                  path,
                  height: 52,
                ),
                const Gap(16),
                Link(url),
              ],
            ),
            const Gap(24),
            Text(description),
          ],
        ),
      ),
    );
  }
}
