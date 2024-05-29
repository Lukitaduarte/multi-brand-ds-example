class MotrizOpacity {
  const MotrizOpacity();

  Map<int, double> get value => {
        0: opacity0,
        100: opacity100,
        200: opacity200,
        300: opacity300,
        400: opacity400,
        500: opacity500,
        600: opacity600,
        1000: opacity1000,
      };

  double get opacity0 => 0.0;

  double get opacity100 => 0.08;

  double get opacity200 => 0.16;

  double get opacity300 => 0.24;

  double get opacity400 => 0.48;

  double get opacity500 => 0.64;

  double get opacity600 => 0.96;

  double get opacity1000 => 100.0;
}
