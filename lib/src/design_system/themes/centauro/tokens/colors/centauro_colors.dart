import 'package:flutter/material.dart';

import '../../../motriz/tokens/colors/motriz_colors.dart';

final class CentauroColors extends MotrizColors {
  @override
  BrandColor get brand => const BrandColor(
        0xFF2D8656,
        <int, Color>{
          100: Color(0xFFE30000),
          200: Color(0xFF00AD1D),
        },
      );

  @override
  ComplementaryColor get complementary => const ComplementaryColor(
        0xFF2D8656,
        <int, Color>{
          100: Color(0xFF465a64),
          200: Color(0xFF8c9ba5),
          300: Color(0xFFa70a13),
          400: Color(0xFF000000),
          500: Color(0xFFffffff),
        },
      );
}
