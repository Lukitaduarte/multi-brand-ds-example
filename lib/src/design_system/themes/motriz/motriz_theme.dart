import 'tokens/borders/motriz_border_radius.dart';
import 'tokens/borders/motriz_border_width.dart';
import 'tokens/colors/motriz_colors.dart';
import 'tokens/opacity/motriz_opacity.dart';
import 'tokens/sizes/motriz_font_size.dart';
import 'tokens/sizes/motriz_icon_size.dart';
import 'tokens/spacing/motriz_spacing.dart';

abstract class MotrizTheme {
  MotrizColors get colors => MotrizColors();

  MotrizSpacing get spacing => MotrizSpacing();

  MotrizBorderRadius get borderRadius => MotrizBorderRadius();

  MotrizBorderWidth get borderWidth => MotrizBorderWidth();

  MotrizFontSize get fontSize => MotrizFontSize();

  MotrizIconSize get iconSize => MotrizIconSize();

  MotrizOpacity get opacity => MotrizOpacity();
}
