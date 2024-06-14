import 'package:flutter/material.dart';
import 'package:flutter_ninjas_2024/component/code_container.dart';
import 'package:flutter_ninjas_2024/component/cons.dart';
import 'package:flutter_ninjas_2024/component/list_item.dart';
import 'package:flutter_ninjas_2024/component/pros.dart';
import 'package:flutter_ninjas_2024/component/second_case_graph.dart';
import 'package:gap/gap.dart';

class UsingPackagePage extends StatelessWidget {
  const UsingPackagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Option 1: Use state management package'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  const SizedBox.expand(
                    child: SecondCaseGraph(),
                  ),
                  Positioned(
                    right: 16,
                    top: 16,
                    child: Container(
                      width: 160,
                      height: 80,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.purple,
                          width: 4,
                        ),
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.purple.shade50,
                      ),
                      child: const Center(
                        child: Text(
                          'State',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Gap(60),
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CodeContainer(_codeUser),
                  const Gap(16),
                  const CodeContainer(_codeOperator),
                  const Gap(32),
                  const Pros(),
                  const Gap(16),
                  ListItem.rich(const [
                    '',
                    'Easy',
                    ' to code with the package\'s support',
                  ]),
                  const Gap(32),
                  const Cons(),
                  const Gap(16),
                  ListItem.rich(const [
                    '',
                    'Extra dependency',
                    ' to the package',
                  ]),
                  const Gap(16),
                  ListItem.text('Extra trick for testing'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

const _codeOperator = '''
onTap: (ClockTheme newTheme) {
    ref.read(clockThemeProvider.notifier).update(newTheme);
}''';

const _codeUser = '''
ClockTheme(
    ref.watch(clockThemeProvider),
    child: TinyClock(),
),''';
