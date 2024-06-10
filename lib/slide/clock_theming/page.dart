import 'package:flutter/material.dart';
import 'package:flutter_ninjas_2024/component/clock_theme.dart';
import 'package:flutter_ninjas_2024/main.dart';
import 'package:gap/gap.dart';

class ClockThemingPage extends StatelessWidget {
  const ClockThemingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Case 1: How to pass its configuration?'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Wrap(
                spacing: 64,
                children: _themeList
                    .map(
                      (data) => GestureDetector(
                        onTap: () {
                          MainApp.of(context).updateTheme(data);
                        },
                        child: Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: data.backgroundColor,
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(
                              color: data.borderColor,
                              width: 4,
                            ),
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
              const Gap(120),
            ],
          ),
        ),
      ),
    );
  }
}

final _themeList = [
  const ClockThemeData(
    backgroundColor: Colors.white,
    borderColor: Colors.black,
    buttonColor: Colors.black,
    textColor: Colors.black,
  ),
  const ClockThemeData(
    backgroundColor: Colors.yellow,
    borderColor: Colors.orange,
    buttonColor: Colors.orange,
    textColor: Colors.black,
  ),
  const ClockThemeData(
    backgroundColor: Colors.purple,
    borderColor: Colors.purple,
    buttonColor: Colors.purple,
    textColor: Colors.white,
  ),
  ClockThemeData(
    backgroundColor: Colors.green[50]!,
    borderColor: Colors.green,
    buttonColor: Colors.green,
    textColor: Colors.green,
  ),
  const ClockThemeData(
    backgroundColor: Colors.black,
    borderColor: Colors.white,
    buttonColor: Colors.black,
    textColor: Colors.white,
  ),
];
