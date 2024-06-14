import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_ninjas_2024/component/clock_theme.dart';
import 'package:flutter_ninjas_2024/component/tiny_clock.dart';
import 'package:flutter_ninjas_2024/slide/agenda/slide.dart';
import 'package:flutter_ninjas_2024/slide/and_more/slide.dart';
import 'package:flutter_ninjas_2024/slide/clock_theming/slide.dart';
import 'package:flutter_ninjas_2024/slide/conclusion/slide.dart';
import 'package:flutter_ninjas_2024/slide/element_does/slide.dart';
import 'package:flutter_ninjas_2024/slide/element_intro/slide.dart';
import 'package:flutter_ninjas_2024/slide/element_widget/slide.dart';
import 'package:flutter_ninjas_2024/slide/example_navigator/slide.dart';
import 'package:flutter_ninjas_2024/slide/example_popscope/slide.dart';
import 'package:flutter_ninjas_2024/slide/example_theme/slide.dart';
import 'package:flutter_ninjas_2024/slide/inherited_widget/slide.dart';
import 'package:flutter_ninjas_2024/slide/inside_widget/slide.dart';
import 'package:flutter_ninjas_2024/slide/of_example/slide.dart';
import 'package:flutter_ninjas_2024/slide/operate_from_descendant/slide.dart';
import 'package:flutter_ninjas_2024/slide/options/slide.dart';
import 'package:flutter_ninjas_2024/slide/resources/slide.dart';
import 'package:flutter_ninjas_2024/slide/see_more/slide.dart';
import 'package:flutter_ninjas_2024/slide/self_intro/slide.dart';
import 'package:flutter_ninjas_2024/slide/thank_you/slide.dart';
import 'package:flutter_ninjas_2024/slide/tiny_clock/slide.dart';
import 'package:flutter_ninjas_2024/slide/title/slide.dart';
import 'package:flutter_ninjas_2024/slide/using_argument/slide.dart';
import 'package:flutter_ninjas_2024/slide/using_context/slide.dart';
import 'package:flutter_ninjas_2024/slide/using_package/slide.dart';
import 'package:flutter_ninjas_2024/slide/using_theme_pattern/slide.dart';
import 'package:flutter_ninjas_2024/slide/why_widget_tree/slide.dart';
import 'package:flutter_ninjas_2024/slide/widgettree_image/slide.dart';
import 'package:graph_your_widget_tree/graph_your_widget_tree.dart';
import 'package:syntax_highlight/syntax_highlight.dart';

late final Highlighter highlighter;

enum WidgetAppearance {
  focused,
  focusedAccent,
  noConnection,
  focusedNoConnection,
  nodeFocused,
  nodeFocusedAccent,
  errorFocusedNode,
  errorNode,
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Highlighter.initialize(['dart', 'yaml']);
  final theme = await HighlighterTheme.loadDarkTheme();
  highlighter = Highlighter(
    language: 'dart',
    theme: theme,
  );

  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  static MainAppState of(BuildContext context) {
    return context.findAncestorStateOfType<MainAppState>()!;
  }

  @override
  State<MainApp> createState() => MainAppState();
}

class MainAppState extends State<MainApp> {
  var _left = 32.0;
  var _top = 32.0;
  var _clockTheme = const ClockThemeData();

  void updateTheme(ClockThemeData theme) {
    setState(() {
      _clockTheme = theme;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GraphTheme(
      defaultTheme: const GraphThemeData(),
      extraThemes: {
        WidgetAppearance.focused: const GraphThemeData(
          backgroundColor: Colors.orange,
          textStyle: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        WidgetAppearance.focusedAccent: const GraphThemeData(
          backgroundColor: Colors.blue,
          textStyle: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        WidgetAppearance.noConnection: const GraphThemeData(
          lineColor: Colors.transparent,
        ),
        WidgetAppearance.focusedNoConnection: const GraphThemeData(
          backgroundColor: Colors.purple,
          textStyle: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          lineColor: Colors.transparent,
        ),
        WidgetAppearance.nodeFocused: GraphThemeData(
          backgroundColor: Colors.orange[100],
          lineColor: Colors.orange,
          lineWidth: 4,
        ),
        WidgetAppearance.nodeFocusedAccent: GraphThemeData(
          backgroundColor: Colors.blue[100],
          lineColor: Colors.blue,
          lineWidth: 4,
        ),
        WidgetAppearance.errorFocusedNode: const GraphThemeData(
          backgroundColor: Colors.red,
          textStyle: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          lineColor: Colors.red,
          lineWidth: 4,
        ),
        WidgetAppearance.errorNode: GraphThemeData(
          backgroundColor: Colors.red[100],
          lineColor: Colors.red,
          lineWidth: 4,
        ),
      },
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: FlutterDeckApp(
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
                  const WhyWidgetTreeSlide(),
                  const WidgettreeImageSlide(),
                  const InsideWidgetSlide(),
                  const ElementDoesSlide(),
                  const ElementIntroSlide(),
                  const WidgetElementSlide(),
                  const OfExampleSlide(),
                  AgendaSlide(1),
                  const ExampleNavigatorSlide(),
                  const ExampleThemeSlide(),
                  const InheritedWidgetSlide(),
                  const PopscopeSlide(),
                  const AndMoreSlide(),
                  AgendaSlide(2),
                  const TinyClockSlide(),
                  const ClockThemingSlide(),
                  const UsingArgumentSlide(),
                  const UsingThemePatternSlide(),
                  const OperateFromDescendantSlide(),
                  const UsingPackageSlide(),
                  const UsingContextSlide(),
                  const OptionsSlide(),
                  const ConclusionSlide(),
                  const SeeMoreSlide(),
                  const ThankYouSlide(),
                ],
              ),
            ),
            Positioned(
              left: _left,
              top: _top,
              child: GestureDetector(
                onPanUpdate: (details) {
                  setState(() {
                    _left += details.delta.dx;
                    _top += details.delta.dy;
                  });
                },
                child: DefaultTextStyle(
                  style: const TextStyle(fontSize: 24, color: Colors.black),
                  child: SizedBox(
                    width: 160,
                    child: ClockTheme(
                      _clockTheme,
                      child: const TinyClock(),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
