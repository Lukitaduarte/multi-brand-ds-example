import 'package:flutter/material.dart';

class MotrizTypography extends StatelessWidget {
  const MotrizTypography(
    this.content, {
    super.key,
    this.maxLength = 0,
    this.textAlign = TextAlign.left,
    this.color = ColorTypes.neutral,
    this.maxLines,
    this.overflow,
    this.requiredLabel = false,
    this.size = TypographyTextSize.paragraphNormal,
  }) : currentType = TypographyTypes.paragraph;

  const MotrizTypography.title(
    this.content, {
    super.key,
    this.maxLength = 0,
    this.textAlign = TextAlign.left,
    this.color = ColorTypes.neutral,
    this.maxLines,
    this.overflow,
    this.requiredLabel = false,
    this.size = TypographyTextSize.titleSmall,
  }) : currentType = TypographyTypes.title;

  const MotrizTypography.subtitle(
    this.content, {
    super.key,
    this.maxLength = 0,
    this.textAlign = TextAlign.left,
    this.color = ColorTypes.neutral,
    this.maxLines,
    this.overflow,
    this.requiredLabel = false,
    this.size = TypographyTextSize.subtitleMedium,
  }) : currentType = TypographyTypes.subtitle;

  const MotrizTypography.caption(
    this.content, {
    super.key,
    this.maxLength = 0,
    this.textAlign = TextAlign.left,
    this.color = ColorTypes.neutral,
    this.maxLines,
    this.overflow,
    this.requiredLabel = false,
    this.size = TypographyTextSize.captionNormal,
  }) : currentType = TypographyTypes.caption;

  const MotrizTypography.offer(
    this.content, {
    super.key,
    this.maxLength = 0,
    this.textAlign = TextAlign.left,
    this.color = ColorTypes.neutral,
    this.maxLines,
    this.overflow,
    this.requiredLabel = false,
    this.size = TypographyTextSize.offerSmall,
  }) : currentType = TypographyTypes.offer;

  const MotrizTypography.simple(
    this.content, {
    super.key,
    this.maxLength = 0,
    this.textAlign = TextAlign.left,
    this.color = ColorTypes.neutral,
    this.maxLines,
    this.overflow,
    this.requiredLabel = false,
    this.size = TypographyTextSize.simpleSmallNormal,
  }) : currentType = TypographyTypes.simple;

  MotrizTypography.link(
    this.content, {
    super.key,
    this.maxLength = 0,
    this.textAlign = TextAlign.left,
    this.color = ColorTypes.neutral,
    this.maxLines,
    this.overflow,
    this.requiredLabel = false,
    this.size = TypographyTextSize.linkSmall,
  }) : currentType = TypographyTypes.link;

  final ColorTypes? color;
  final TypographyTypes currentType;
  final TextAlign? textAlign;
  final String content;
  final int maxLength;
  final int? maxLines;
  final TextOverflow? overflow;
  final bool requiredLabel;
  final TypographyTextSize size;

  @override
  Widget build(BuildContext context) {
    return Text(
      _formatMaxLength(),
      style: getThemedStyle(
        context,
        type: size,
        color: getThemedColor(context, color!),
      ),
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
    );
  }

  String _formatMaxLength() {
    var textResult = content;

    if (maxLength > 0 && content.length > maxLength) {
      final splitTextOnMaxLength = content.substring(0, maxLength);
      textResult = '$splitTextOnMaxLength...';
    }

    return textResult;
  }
}
