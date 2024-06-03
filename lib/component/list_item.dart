import 'package:flutter/material.dart';
import 'package:flutter_ninjas_2024/component/colored_text.dart';
import 'package:gap/gap.dart';

class ListItem extends StatelessWidget {
  const ListItem._(this.textFragments);
  factory ListItem.text(String text) => ListItem._([text]);
  factory ListItem.rich(List<String> textFragments) =>
      ListItem._(textFragments);

  final List<String> textFragments;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 12),
          child: Icon(Icons.keyboard_arrow_right_rounded),
        ),
        const Gap(24),
        Expanded(child: ColoredText(textFragments)),
      ],
    );
  }
}
