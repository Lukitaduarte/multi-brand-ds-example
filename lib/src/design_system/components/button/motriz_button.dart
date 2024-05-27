import 'package:flutter/material.dart';
import 'package:multi_brand_ds_example/src/design_system/utils/extension.dart';

import 'styles/button_hierarchy.dart';
import 'styles/button_size.dart';

class MotrizButton extends StatelessWidget {
  const MotrizButton({
    super.key,
    required this.size,
    required this.hierarchy,
    required this.text,
    this.onPress,
    this.loading = false,
    this.disabled = false,
  });

  const MotrizButton.primary({
    super.key,
    required this.text,
    this.onPress,
    this.loading = false,
    this.disabled = false,
    this.size = const ButtonMedium(),
  }) : hierarchy = const ButtonPrimary();

  const MotrizButton.secondary({
    super.key,
    required this.text,
    this.onPress,
    this.loading = false,
    this.disabled = false,
    this.size = const ButtonMedium(),
  }) : hierarchy = const ButtonSecondary();

  const MotrizButton.tertiary({
    super.key,
    required this.text,
    this.onPress,
    this.loading = false,
    this.disabled = false,
    this.size = const ButtonMedium(),
  }) : hierarchy = const ButtonTertiary();

  final String text;
  final bool loading;
  final bool disabled;

  /// The size of the button.
  ///
  /// The types can be:
  /// - [ButtonSmall]
  /// - [ButtonMedium]
  /// - [ButtonLarge]
  /// - [ButtonExtraLarge]
  final ButtonSize size;

  /// The hierarchy of the button.
  ///
  /// The types can be:
  /// - [ButtonPrimary]
  /// - [ButtonSecondary]
  /// - [ButtonTertiary]
  final ButtonHierarchy hierarchy;

  final GestureTapCallback? onPress;

  @override
  Widget build(BuildContext context) {
    final isDisabled = loading || disabled || onPress == null;

    return RawMaterialButton(
      elevation: 0,
      hoverElevation: 0,
      focusElevation: 0,
      highlightElevation: 0,
      disabledElevation: 0,
      enableFeedback: false,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: !isDisabled
              ? hierarchy.borderColor
              : hierarchy.disabledBorderColor,
          width: isDisabled
              ? hierarchy.disabledBorderWidth
              : hierarchy.borderWidth,
          style: hierarchy.disabledBorderWidth.toBorderNone(),
        ),
        borderRadius: BorderRadius.circular(
          hierarchy.borderRadius,
        ),
      ),
      fillColor: isDisabled ? hierarchy.disableFillColor : hierarchy.fillColor,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: hierarchy.highlightColor,
      splashColor: hierarchy.splashColor,
      padding: EdgeInsets.symmetric(
        vertical: size.verticalSize,
        horizontal: size.horizontalSize,
      ),
      onPressed: !isDisabled ? onPress : null,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: [
              Text(
                text,
                style: TextStyle(
                  color: isDisabled
                      ? hierarchy.disableTextColor
                      : hierarchy.textColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
