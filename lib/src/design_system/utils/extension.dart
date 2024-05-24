import 'package:flutter/widgets.dart';
import 'package:multi_brand_ds_example/src/design_system/themes/motriz/tokens/opacity/motriz_opacity.dart';
import 'package:multi_brand_ds_example/src/design_system/themes/motriz/tokens/spacing/motriz_spacing.dart';

import '../theme_provider.dart';
import '../themes/motriz/motriz_theme.dart';
import '../themes/motriz/tokens/borders/motriz_border_radius.dart';
import '../themes/motriz/tokens/borders/motriz_border_width.dart';
import '../themes/motriz/tokens/colors/motriz_colors.dart';
import '../themes/motriz/tokens/sizes/motriz_font_size.dart';
import '../themes/motriz/tokens/sizes/motriz_icon_size.dart';

extension GetTheme on BuildContext {
  MotrizTheme get theme => ThemeProvider.of(this);

  MotrizColors get colors => ThemeProvider.of(this).colors;

  MotrizBorderRadius get borderRadius => ThemeProvider.of(this).borderRadius;

  MotrizBorderWidth get borderWidth => ThemeProvider.of(this).borderWidth;

  MotrizFontSize get fontSize => ThemeProvider.of(this).fontSize;

  MotrizIconSize get iconSize => ThemeProvider.of(this).iconSize;

  MotrizSpacing get spacing => ThemeProvider.of(this).spacing;

  MotrizOpacity get opacity => ThemeProvider.of(this).opacity;
}

extension ToBorderNone on double {
  BorderStyle toBorderNone() =>
      this == 0.0 ? BorderStyle.none : BorderStyle.solid;

  BorderStyle toContrastOpacity() =>
      this == 0.0 ? BorderStyle.none : BorderStyle.solid;
}
