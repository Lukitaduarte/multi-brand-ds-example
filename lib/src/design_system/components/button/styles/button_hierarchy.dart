import 'package:flutter/material.dart';

import '../../../themes/motriz/tokens/tokens.dart';
import '../../../utils/extension.dart';

/// The button variants theme tokens.
sealed class ButtonHierarchy {
  /// Default Motriz design tokens.
  const ButtonHierarchy({
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

  /// Returns the button hierarchy of the current context.
  ButtonHierarchy of(BuildContext context);
}

/// The primary button variant.
class ButtonPrimary extends ButtonHierarchy {
  const ButtonPrimary();

  const ButtonPrimary.of({
    super.colors,
    super.radius,
    super.width,
    super.opacity,
  });

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

  @override
  ButtonHierarchy of(BuildContext context) {
    return ButtonPrimary.of(
      colors: context.colors,
      radius: context.borderRadius,
      width: context.borderWidth,
      opacity: context.opacity,
    );
  }
}

/// The secondary button variant.
class ButtonSecondary extends ButtonHierarchy {
  const ButtonSecondary();

  const ButtonSecondary.of({
    super.colors,
    super.radius,
    super.width,
    super.opacity,
  });

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

  @override
  ButtonHierarchy of(BuildContext context) {
    return ButtonSecondary.of(
      colors: context.colors,
      radius: context.borderRadius,
      width: context.borderWidth,
      opacity: context.opacity,
    );
  }
}

/// The tertiary button variant.
class ButtonTertiary extends ButtonHierarchy {
  const ButtonTertiary();

  const ButtonTertiary.of({
    super.colors,
    super.radius,
    super.width,
    super.opacity,
  });

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

  @override
  ButtonHierarchy of(BuildContext context) {
    return ButtonTertiary.of(
      colors: context.colors,
      radius: context.borderRadius,
      width: context.borderWidth,
      opacity: context.opacity,
    );
  }
}

// apps/centauro/design_system/components/buttons/custom_primary_button.dart
/// The custom primary button variant.
class ButtonPrimaryCentauro extends ButtonHierarchy {
  const ButtonPrimaryCentauro();

  const ButtonPrimaryCentauro.of({
    super.colors,
    super.radius,
    super.width,
    super.opacity,
  });

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

  @override
  ButtonHierarchy of(BuildContext context) {
    return ButtonPrimaryCentauro.of(
      colors: context.colors,
      radius: context.borderRadius,
      width: context.borderWidth,
      opacity: context.opacity,
    );
  }
}
