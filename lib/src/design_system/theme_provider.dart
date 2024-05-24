import 'package:flutter/widgets.dart';

import 'themes/motriz/motriz_theme.dart';

class ThemeProvider<T extends MotrizTheme> extends InheritedWidget {
  const ThemeProvider({
    super.key,
    required this.theme,
    required super.child,
  });

  final T theme;

  static T of<T extends MotrizTheme>(BuildContext context) {
    final widget = context.dependOnInheritedWidgetOfExactType<ThemeProvider>();
    return widget!.theme as T;
  }

  @override
  bool updateShouldNotify(covariant ThemeProvider oldWidget) {
    return theme != oldWidget.theme;
  }
}
