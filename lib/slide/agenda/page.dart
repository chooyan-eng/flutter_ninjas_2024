import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intersperse/intersperse.dart';

class AgendaPage extends StatelessWidget {
  const AgendaPage({super.key, this.highLighted});

  final int? highLighted;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).colorScheme.primary,
      child: Center(
        child: IntrinsicWidth(
          child: Builder(builder: (c) {
            return DefaultTextStyle(
              style: DefaultTextStyle.of(c).style.merge(
                    const TextStyle(color: Colors.white, fontSize: 40),
                  ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Center(
                    child: Text(
                      'Agenda',
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.white,
                            color: Colors.white,
                          ),
                    ),
                  ),
                  _HighlightedText(
                    '1. Introduction to widget tree under the hood',
                    isHighlighted: highLighted == null || highLighted == 0,
                  ),
                  _HighlightedText(
                    '2. Built-in widgets and their ideas',
                    isHighlighted: highLighted == null || highLighted == 1,
                  ),
                  _HighlightedText(
                    '3. Ideas to enhance usability of our widgets',
                    isHighlighted: highLighted == null || highLighted == 2,
                  ),
                ].intersperse(const Gap(32)).toList(),
              ),
            );
          }),
        ),
      ),
    );
  }
}

class _HighlightedText extends StatelessWidget {
  const _HighlightedText(this.text, {required this.isHighlighted});

  final bool isHighlighted;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: isHighlighted ? null : TextStyle(color: Colors.indigo.shade300),
    );
  }
}
