import 'package:flutter/material.dart';

base class MotrizColors {
  const MotrizColors();

  MaterialColor get alert => const MaterialColor(
        0xFFBF5920,
        <int, Color>{
          50: Color(0xFFF2DED2),
          100: Color(0xFFFAA273),
          200: Color(0xFFBF5920),
          300: Color(0xFF894723),
        },
      );

  MaterialColor get informative => const MaterialColor(
        0xFF2677D0,
        <int, Color>{
          50: Color(0xFFEAF1FA),
          100: Color(0xFF96BAE7),
          200: Color(0xFF2677D0),
          300: Color(0xFF2E5A8F),
        },
      );

  MaterialColor get negative => const MaterialColor(
        0xFFDD3728,
        <int, Color>{
          50: Color(0xFFF8D7D4),
          100: Color(0xFFEEA598),
          200: Color(0xFFDD3728),
          300: Color(0xFFA72A1E),
        },
      );

  MaterialColor get neutral => const MaterialColor(
        0xFF767676,
        <int, Color>{
          100: Color(0xFFFFFFFF),
          200: Color(0xFFF3F3F3),
          300: Color(0xFFD2D2D2),
          400: Color(0xFF959595),
          500: Color(0xFF767676),
          600: Color(0xFF6F6F6F),
          700: Color(0xFF111111),
        },
      );

  MaterialColor get success => const MaterialColor(
        0xFF2D8656,
        <int, Color>{
          50: Color(0xFFD5E7DD),
          100: Color(0xFF82C69B),
          200: Color(0xFF2D8656),
          300: Color(0xFF2E6344),
        },
      );

  Color get focus => const Color(0xFF2677D0);

  BrandColor get brand => const BrandColor(
        0xFF111111,
        <int, Color>{
          100: Color(0xFF111111),
          200: Color(0xFF111111),
        },
      );

  ComplementaryColor get complementary => const ComplementaryColor(
        0xFF111111,
        <int, Color>{
          100: Color(0xFF111111),
          200: Color(0xFF111111),
          300: Color(0xFF111111),
          400: Color(0xFF111111),
          500: Color(0xFF111111),
        },
      );
}

class BrandColor extends ColorSwatch<int> {
  const BrandColor(super.primary, super.swatch);

  Color get primary => this[100]!;

  Color get secondary => this[200]!;
}

class ComplementaryColor extends ColorSwatch<int> {
  const ComplementaryColor(super.primary, super.swatch);

  Color get swimming => this[100]!;

  Color get basketball => this[200]!;

  Color get soccer => this[300]!;

  Color get running => this[400]!;

  Color get volleyball => this[500]!;
}
