import 'package:flutter/material.dart';

import '../../../utils/extension.dart';

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
  const ButtonPrimary(this.context);

  final BuildContext context;

  /// Active color of the button
  @override
  Color get fillColor => context.colors.brand.primary;

  @override
  Color get textColor => context.colors.neutral.shade100;

  @override
  Color get borderColor => context.colors.brand.primary;

  @override
  double get borderRadius => context.borderRadius.large;

  @override
  double get borderWidth => context.borderWidth.none;

  @override
  Color get splashColor => Color.alphaBlend(
        context.colors.brand.primary.withOpacity(context.opacity.opacity500),
        context.colors.neutral.shade100,
      );

  @override
  Color get highlightColor => Color.alphaBlend(
        context.colors.brand.primary.withOpacity(context.opacity.opacity500),
        context.colors.neutral.shade100,
      );

  /// Disabled color of the button
  @override
  Color get disableTextColor => context.colors.neutral.shade100;

  @override
  Color get disableFillColor => context.colors.neutral.shade400;

  @override
  Color get disabledBorderColor => context.colors.neutral.shade400;

  @override
  double get disabledBorderWidth => context.borderWidth.none;
}

class ButtonSecondary extends ButtonHierarchy {
  const ButtonSecondary(this.context);

  final BuildContext context;

  /// Active color of the button
  @override
  Color get fillColor => context.colors.neutral.shade100;

  @override
  Color get textColor => context.colors.brand.primary;

  @override
  Color get borderColor => context.colors.brand.primary;

  @override
  double get borderRadius => context.borderRadius.large;

  @override
  double get borderWidth => context.borderWidth.xThin;

  @override
  Color get splashColor => Color.alphaBlend(
        context.colors.brand.primary.withOpacity(context.opacity.opacity500),
        context.colors.neutral.shade100,
      );

  @override
  Color get highlightColor => Color.alphaBlend(
        context.colors.brand.primary.withOpacity(context.opacity.opacity500),
        context.colors.neutral.shade100,
      );

  /// Disabled color of the button
  @override
  Color get disableTextColor => context.colors.neutral.shade400;

  @override
  Color get disableFillColor => context.colors.neutral.shade100;

  @override
  double get disabledBorderWidth => context.borderWidth.xThin;

  @override
  Color get disabledBorderColor => context.colors.neutral.shade400;
}

class ButtonTertiary extends ButtonHierarchy {
  const ButtonTertiary(this.context);

  final BuildContext context;

  /// Active color of the button
  @override
  Color get fillColor => context.colors.neutral.shade100;

  @override
  Color get textColor => context.colors.brand.primary;

  @override
  Color get borderColor => context.colors.brand.primary;

  @override
  double get borderRadius => context.borderRadius.large;

  @override
  double get borderWidth => context.borderWidth.none;

  @override
  Color get splashColor =>
      context.colors.brand.primary.withOpacity(context.opacity.opacity500);

  @override
  Color get highlightColor =>
      context.colors.brand.primary.withOpacity(context.opacity.opacity500);

  /// Disabled color of the button
  @override
  Color get disableTextColor => context.colors.neutral.shade400;

  @override
  Color get disableFillColor => context.colors.neutral.shade100;

  @override
  double get disabledBorderWidth => context.borderWidth.none;

  @override
  Color get disabledBorderColor => context.colors.neutral.shade400;
}
