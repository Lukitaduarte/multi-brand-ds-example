import 'package:flutter/widgets.dart';

import '../../../themes/motriz/tokens/tokens.dart';
import '../../../utils/extension.dart';

/// The button size theme tokens.
sealed class ButtonSize {
  /// Default Motriz design tokens.
  const ButtonSize({
    this.spacing = const MotrizSpacing(),
  });

  final MotrizSpacing spacing;

  /// The sizes of the button.
  double get verticalSize;

  double get horizontalSize;

  /// Returns the button size of the current context.
  ButtonSize of(BuildContext context);
}

/// The extra large button size.
final class ButtonExtraLarge extends ButtonSize {
  const ButtonExtraLarge();

  const ButtonExtraLarge.of({
    super.spacing,
  });

  @override
  double get horizontalSize => spacing.spacing300;

  @override
  double get verticalSize => spacing.spacing250;

  @override
  ButtonSize of(BuildContext context) =>
      ButtonExtraLarge.of(spacing: context.spacing);
}

/// The large button size.
final class ButtonLarge extends ButtonSize {
  const ButtonLarge();

  const ButtonLarge.of({
    super.spacing,
  });

  @override
  double get horizontalSize => spacing.spacing300;

  @override
  double get verticalSize => spacing.spacing200;

  @override
  ButtonSize of(BuildContext context) =>
      ButtonLarge.of(spacing: context.spacing);
}

/// The medium button size.
final class ButtonMedium extends ButtonSize {
  const ButtonMedium();

  const ButtonMedium.of({
    super.spacing,
  });

  @override
  double get horizontalSize => spacing.spacing300;

  @override
  double get verticalSize => spacing.spacing150;

  @override
  ButtonSize of(BuildContext context) =>
      ButtonMedium.of(spacing: context.spacing);
}

/// The small button size.
final class ButtonSmall extends ButtonSize {
  const ButtonSmall();

  const ButtonSmall.of({
    super.spacing,
  });

  @override
  double get horizontalSize => spacing.spacing100;

  @override
  double get verticalSize => spacing.spacing50;

  @override
  ButtonSize of(BuildContext context) =>
      ButtonSmall.of(spacing: context.spacing);
}
