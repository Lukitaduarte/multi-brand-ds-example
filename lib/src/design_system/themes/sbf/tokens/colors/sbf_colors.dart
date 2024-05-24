import 'package:flutter/material.dart';

import '../../../motriz/tokens/colors/motriz_colors.dart';

final class SbfColors extends MotrizColors {
  @override
  BrandColor get brand => const BrandColor(
        0xFF2D8656,
        <int, Color>{
          100: Color(0xFF323737),
          200: Color(0xFFDCE6E6),
        },
      );

  @override
  ComplementaryColor get complementary => const ComplementaryColor(
        0xFF2D8656,
        <int, Color>{
          100: Color(0xFF789B4B),
          200: Color(0xFFB4DC5A),
          300: Color(0xFFFA4B00),
          400: Color(0xFF552D91),
          500: Color(0xFF5AB9B4),
        },
      );
}
