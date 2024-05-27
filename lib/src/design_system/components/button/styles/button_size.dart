import 'package:multi_brand_ds_example/src/design_system/themes/motriz/tokens/spacing/motriz_spacing.dart';

sealed class ButtonSize {
  const ButtonSize();

  double get verticalSize;

  double get horizontalSize;
}

class ButtonExtraLarge extends ButtonSize {
  const ButtonExtraLarge({
    this.spacing = const MotrizSpacing(),
  });

  final MotrizSpacing spacing;

  @override
  double get horizontalSize => spacing.spacing300;

  @override
  double get verticalSize => spacing.spacing250;
}

class ButtonLarge extends ButtonSize {
  const ButtonLarge({
    this.spacing = const MotrizSpacing(),
  });

  final MotrizSpacing spacing;

  @override
  double get horizontalSize => spacing.spacing300;

  @override
  double get verticalSize => spacing.spacing200;
}

class ButtonMedium extends ButtonSize {
  const ButtonMedium({
    this.spacing = const MotrizSpacing(),
  });

  final MotrizSpacing spacing;

  @override
  double get horizontalSize => spacing.spacing300;

  @override
  double get verticalSize => spacing.spacing150;
}

class ButtonSmall extends ButtonSize {
  const ButtonSmall({
    this.spacing = const MotrizSpacing(),
  });

  final MotrizSpacing spacing;

  @override
  double get horizontalSize => spacing.spacing100;

  @override
  double get verticalSize => spacing.spacing50;
}
