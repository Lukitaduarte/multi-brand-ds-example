import 'package:flutter/widgets.dart';

import '../../../utils/extension.dart';

sealed class ButtonSize {
  const ButtonSize(this.context);

  final BuildContext context;

  double get verticalSize;

  double get horizontalSize;
}

class ButtonExtraLarge extends ButtonSize {
  const ButtonExtraLarge(super.context);

  @override
  double get horizontalSize => context.spacing.spacing300;

  @override
  double get verticalSize => context.spacing.spacing250;
}

class ButtonLarge extends ButtonSize {
  const ButtonLarge(super.context);

  @override
  double get horizontalSize => context.spacing.spacing300;

  @override
  double get verticalSize => context.spacing.spacing200;
}

class ButtonMedium extends ButtonSize {
  const ButtonMedium(super.context);

  @override
  double get horizontalSize => context.spacing.spacing300;

  @override
  double get verticalSize => context.spacing.spacing150;
}

class ButtonSmall extends ButtonSize {
  const ButtonSmall(super.context);

  @override
  double get horizontalSize => context.spacing.spacing100;

  @override
  double get verticalSize => context.spacing.spacing50;
}
