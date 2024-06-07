import 'package:flutter/material.dart';
import 'package:flutter_ninjas_2024/component/code_container.dart';

class UsingThemePatternPage extends StatelessWidget {
  const UsingThemePatternPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Using Theme pattern'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(32),
        child: Column(
          children: [
            CodeContainer(_code),
          ],
        ),
      ),
    );
  }
}

const _code = '''
ClockTheme(
    data: ClockThemeData(
        backgroundColor: _backgroundColor,
        borderColor: _borderColor,
        buttonColor: _buttonColor,
        textColor: _textColor,
    ), 
    child: SomeWidget(
        ...
        child: TinyClock(),
    ),
),''';
