import 'package:flutter/material.dart';

class MotrizShadow {
  Map<int, BoxShadow> get value => {
        100: shadow100,
        200: shadow200,
        300: shadow300,
        400: shadow400,
        500: shadow500,
      };

  BoxShadow get shadow100 => const BoxShadow(
        color: Color.fromRGBO(17, 17, 17, 0.16),
        blurRadius: 8,
        spreadRadius: 2,
      );

  BoxShadow get shadow200 => const BoxShadow(
        color: Color.fromRGBO(17, 17, 17, 0.16),
        blurRadius: 16,
        spreadRadius: 4,
      );

  BoxShadow get shadow300 => const BoxShadow(
        color: Color.fromRGBO(17, 17, 17, 0.24),
        blurRadius: 16,
        spreadRadius: 4,
      );

  BoxShadow get shadow400 => const BoxShadow(
        color: Color.fromRGBO(17, 17, 17, 0.24),
        blurRadius: 24,
        spreadRadius: 8,
      );

  BoxShadow get shadow500 => const BoxShadow(
        color: Color.fromRGBO(17, 17, 17, 0.32),
        blurRadius: 32,
        spreadRadius: 16,
      );
}
