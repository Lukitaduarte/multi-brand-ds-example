import 'tokens/borders/motriz_border_radius.dart';
import 'tokens/borders/motriz_border_width.dart';
import 'tokens/colors/motriz_colors.dart';
import 'tokens/opacity/motriz_opacity.dart';
import 'tokens/sizes/motriz_font_size.dart';
import 'tokens/sizes/motriz_icon_size.dart';
import 'tokens/spacing/motriz_spacing.dart';

abstract class MotrizTheme {
  const MotrizTheme({
    this.colors = const MotrizColors(),
    this.spacing = const MotrizSpacing(),
    this.borderRadius = const MotrizBorderRadius(),
    this.borderWidth = const MotrizBorderWidth(),
    this.fontSize = const MotrizFontSize(),
    this.iconSize = const MotrizIconSize(),
    this.opacity = const MotrizOpacity(),
  });

  final MotrizColors colors;
  final MotrizSpacing spacing;
  final MotrizBorderRadius borderRadius;
  final MotrizBorderWidth borderWidth;
  final MotrizFontSize fontSize;
  final MotrizIconSize iconSize;
  final MotrizOpacity opacity;
}
