import 'package:flutter/material.dart';
import 'package:flutter_ninjas_2024/component/link.dart';
import 'package:gap/gap.dart';
import 'package:url_launcher/url_launcher.dart';

class SeeMorePage extends StatelessWidget {
  const SeeMorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('See Also'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(32),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _Item(
                url: 'https://github.com/chooyan-eng/graph_your_widget_tree',
                description: 'Graph widget applies its theme using GraphTheme\n'
                    'found by GraphTheme.of(context)',
              ),
              Gap(32),
              _Item(
                url: 'https://github.com/chooyan-eng/flutter_ninjas_2024',
                description:
                    'TinyClock widget using the patterns discussed so far, \n'
                    'and also an example of flutter_deck package',
              ),
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
    required this.description,
  });

  final String url;
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
            Link(url),
            const Gap(24),
            Text(description),
          ],
        ),
      ),
    );
  }
}
