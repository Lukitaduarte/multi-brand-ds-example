import 'package:flutter/material.dart';
import 'package:multi_brand_ds_example/src/design_system/utils/extension.dart';

import 'styles/button_hierarchy.dart';
import 'styles/button_size.dart';

enum ButtonHierarchyType {
  primary,
  secondary,
  tertiary,
}

enum ButtonSizeType {
  small,
  medium,
  large,
  xLarge,
}

class MotrizButton extends StatefulWidget {
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
    this.size = ButtonSizeType.medium,
  }) : hierarchy = ButtonHierarchyType.primary;

  const MotrizButton.secondary({
    super.key,
    required this.text,
    this.onPress,
    this.loading = false,
    this.disabled = false,
    this.size = ButtonSizeType.medium,
  }) : hierarchy = ButtonHierarchyType.secondary;

  const MotrizButton.tertiary({
    super.key,
    required this.text,
    this.onPress,
    this.loading = false,
    this.disabled = false,
    this.size = ButtonSizeType.medium,
  }) : hierarchy = ButtonHierarchyType.tertiary;

  final String text;
  final bool loading;
  final bool disabled;
  final ButtonSizeType size;
  final ButtonHierarchyType hierarchy;
  final GestureTapCallback? onPress;

  @override
  State<StatefulWidget> createState() => _MotrizButtonState();
}

class _MotrizButtonState extends State<MotrizButton> {
  Map<ButtonHierarchyType, ButtonHierarchy> get _buttonStyle => {
        ButtonHierarchyType.primary: ButtonPrimary(context),
        ButtonHierarchyType.secondary: ButtonSecondary(context),
        ButtonHierarchyType.tertiary: ButtonTertiary(context),
      };

  Map<ButtonSizeType, ButtonSize> get _buttonSize => {
        ButtonSizeType.small: ButtonSmall(context),
        ButtonSizeType.medium: ButtonMedium(context),
        ButtonSizeType.large: ButtonLarge(context),
        ButtonSizeType.xLarge: ButtonExtraLarge(context),
      };

  @override
  Widget build(BuildContext context) {
    final hierarchy = _buttonStyle[widget.hierarchy] ?? ButtonPrimary(context);
    final size = _buttonSize[widget.size] ?? ButtonMedium(context);
    final isDisabled =
        widget.loading || widget.disabled || widget.onPress == null;

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
      onPressed: !isDisabled ? widget.onPress : null,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: [
              Text(
                widget.text,
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
