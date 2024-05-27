import 'package:flutter/material.dart';
import 'package:multi_brand_ds_example/src/design_system/themes/motriz/tokens/borders/motriz_border_radius.dart';
import 'package:multi_brand_ds_example/src/design_system/themes/motriz/tokens/borders/motriz_border_width.dart';
import 'package:multi_brand_ds_example/src/design_system/themes/motriz/tokens/colors/motriz_colors.dart';
import 'package:multi_brand_ds_example/src/design_system/themes/motriz/tokens/opacity/motriz_opacity.dart';

sealed class ButtonHierarchy {
  const ButtonHierarchy();

  /// Active color of the button
  Color get textColor;

  Color get fillColor;

  Color get borderColor;

  Color get highlightColor;

  Color get splashColor;

  double get borderWidth;

  double get borderRadius;

  /// Disabled color of the button
  Color get disableTextColor;

  Color get disableFillColor;

  Color get disabledBorderColor;

  double get disabledBorderWidth;
}

class ButtonPrimary extends ButtonHierarchy {
  const ButtonPrimary({
    this.colors = const MotrizColors(),
    this.radius = const MotrizBorderRadius(),
    this.width = const MotrizBorderWidth(),
    this.opacity = const MotrizOpacity(),
  });

  final MotrizColors colors;
  final MotrizBorderRadius radius;
  final MotrizBorderWidth width;
  final MotrizOpacity opacity;

  /// Active color of the button
  @override
  Color get fillColor => colors.brand.primary;

  @override
  Color get textColor => colors.neutral.shade100;

  @override
  Color get borderColor => colors.brand.primary;

  @override
  double get borderRadius => radius.large;

  @override
  double get borderWidth => width.none;

  @override
  Color get splashColor => Color.alphaBlend(
        colors.brand.primary.withOpacity(opacity.opacity500),
        colors.neutral.shade100,
      );

  @override
  Color get highlightColor => Color.alphaBlend(
        colors.brand.primary.withOpacity(opacity.opacity500),
        colors.neutral.shade100,
      );

  /// Disabled color of the button
  @override
  Color get disableTextColor => colors.neutral.shade100;

  @override
  Color get disableFillColor => colors.neutral.shade400;

  @override
  Color get disabledBorderColor => colors.neutral.shade400;

  @override
  double get disabledBorderWidth => width.none;
}

class ButtonSecondary extends ButtonHierarchy {
  const ButtonSecondary({
    this.colors = const MotrizColors(),
    this.radius = const MotrizBorderRadius(),
    this.width = const MotrizBorderWidth(),
    this.opacity = const MotrizOpacity(),
  });

  final MotrizColors colors;
  final MotrizBorderRadius radius;
  final MotrizBorderWidth width;
  final MotrizOpacity opacity;

  /// Active color of the button
  @override
  Color get fillColor => colors.neutral.shade100;

  @override
  Color get textColor => colors.brand.primary;

  @override
  Color get borderColor => colors.brand.primary;

  @override
  double get borderRadius => radius.large;

  @override
  double get borderWidth => width.xThin;

  @override
  Color get splashColor => Color.alphaBlend(
        colors.brand.primary.withOpacity(opacity.opacity500),
        colors.neutral.shade100,
      );

  @override
  Color get highlightColor => Color.alphaBlend(
        colors.brand.primary.withOpacity(opacity.opacity500),
        colors.neutral.shade100,
      );

  /// Disabled color of the button
  @override
  Color get disableTextColor => colors.neutral.shade400;

  @override
  Color get disableFillColor => colors.neutral.shade100;

  @override
  double get disabledBorderWidth => width.xThin;

  @override
  Color get disabledBorderColor => colors.neutral.shade400;
}

class ButtonTertiary extends ButtonHierarchy {
  const ButtonTertiary({
    this.colors = const MotrizColors(),
    this.radius = const MotrizBorderRadius(),
    this.width = const MotrizBorderWidth(),
    this.opacity = const MotrizOpacity(),
  });

  final MotrizColors colors;
  final MotrizBorderRadius radius;
  final MotrizBorderWidth width;
  final MotrizOpacity opacity;

  /// Active color of the button
  @override
  Color get fillColor => colors.neutral.shade100;

  @override
  Color get textColor => colors.brand.primary;

  @override
  Color get borderColor => colors.brand.primary;

  @override
  double get borderRadius => radius.large;

  @override
  double get borderWidth => width.none;

  @override
  Color get splashColor => colors.brand.primary.withOpacity(opacity.opacity500);

  @override
  Color get highlightColor =>
      colors.brand.primary.withOpacity(opacity.opacity500);

  /// Disabled color of the button
  @override
  Color get disableTextColor => colors.neutral.shade400;

  @override
  Color get disableFillColor => colors.neutral.shade100;

  @override
  double get disabledBorderWidth => width.none;

  @override
  Color get disabledBorderColor => colors.neutral.shade400;
}

class ButtonPrimaryCentauro extends ButtonPrimary {
  const ButtonPrimaryCentauro({
    super.colors,
    super.radius,
    super.width,
    super.opacity,
  });

  @override
  Color get textColor => colors.neutral.shade200;
}
