import 'package:flutter/material.dart';

class ClockThemeData {
  final Color backgroundColor;
  final Color textColor;
  final Color borderColor;
  final Color buttonColor;

  const ClockThemeData({
    this.backgroundColor = Colors.white,
    this.textColor = Colors.black,
    this.borderColor = Colors.brown,
    this.buttonColor = Colors.brown,
  });
}

class ClockTheme extends InheritedWidget {
  const ClockTheme(
    this.themeData, {
    required super.child,
    super.key,
  });

  final ClockThemeData themeData;

  static ClockThemeData of(
    BuildContext context,
  ) {
    final theme = context.dependOnInheritedWidgetOfExactType<ClockTheme>();
    return theme?.themeData ?? const ClockThemeData();
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return themeData != (oldWidget as ClockTheme).themeData;
  }
}
