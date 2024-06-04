import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_ninjas_2024/slide/agenda/slide.dart';
import 'package:flutter_ninjas_2024/slide/element_does/slide.dart';
import 'package:flutter_ninjas_2024/slide/element_intro/slide.dart';
import 'package:flutter_ninjas_2024/slide/inside_widget/slide.dart';
import 'package:flutter_ninjas_2024/slide/resources/slide.dart';
import 'package:flutter_ninjas_2024/slide/self_intro/slide.dart';
import 'package:flutter_ninjas_2024/slide/title/slide.dart';
import 'package:flutter_ninjas_2024/slide/widgettree_image/slide.dart';
import 'package:syntax_highlight/syntax_highlight.dart';

late final Highlighter highlighter;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Highlighter.initialize(['dart', 'yaml']);
  final theme = await HighlighterTheme.loadLightTheme();
  highlighter = Highlighter(
    language: 'dart',
    theme: theme,
  );

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterDeckApp(
      lightTheme: FlutterDeckThemeData(
        theme: ThemeData(
          textTheme: const TextTheme(
            bodyLarge: TextStyle(fontSize: 36),
            bodyMedium: TextStyle(fontSize: 32),
            bodySmall: TextStyle(fontSize: 28),
            labelLarge: TextStyle(fontSize: 40),
            labelSmall: TextStyle(fontSize: 20),
          ),
          appBarTheme: const AppBarTheme(
            titleTextStyle: TextStyle(
              fontSize: 40,
              color: Colors.black87,
            ),
            foregroundColor: Colors.black87,
          ),
        ),
      ),
      slides: [
        const TitleSlide(),
        const SelfIntroSlide(),
        const ResourcesSlide(),
        AgendaSlide(null),
        AgendaSlide(0),
        const WidgettreeImageSlide(),
        const InsideWidgetSlide(),
        const ElementDoesSlide(),
        const ElementIntroSlide(),
        AgendaSlide(1),
        AgendaSlide(2),
      ],
    );
  }
}
