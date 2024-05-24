import 'package:flutter/material.dart';
import 'package:multi_brand_ds_example/src/design_system/theme_provider.dart';
import 'package:multi_brand_ds_example/src/design_system/themes/centauro/centauro_theme.dart';
import 'package:multi_brand_ds_example/src/design_system/themes/sbf/sbf_theme.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

import 'main.directories.g.dart';
import 'src/design_system/themes/motriz/motriz_theme.dart';

final sbfTheme = SbfTheme();
final centauroTheme = CentauroTheme();

void main() {
  runApp(const WidgetbookApp());
}

@widgetbook.App()
class WidgetbookApp extends StatelessWidget {
  const WidgetbookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      directories: directories,
      addons: [
        InspectorAddon(enabled: false),
        DeviceFrameAddon(
          devices: [
            Devices.ios.iPhoneSE,
            Devices.ios.iPhone13ProMax,
            Devices.ios.iPad,
            Devices.android.smallPhone,
            Devices.android.mediumPhone,
            Devices.android.bigPhone,
          ],
          initialDevice: Devices.android.mediumPhone,
        ),
        ThemeAddon<MotrizTheme>(
          themes: [
            WidgetbookTheme(
              name: 'Sbf',
              data: sbfTheme,
            ),
            WidgetbookTheme(
              name: 'Centauro',
              data: centauroTheme,
            ),
          ],
          initialTheme: WidgetbookTheme(
            name: 'Sbf',
            data: sbfTheme,
          ),
          themeBuilder: (context, MotrizTheme theme, child) => ThemeProvider(
            theme: theme,
            child: child,
          ),
        ),
        BuilderAddon(
          name: 'Red',
          builder: (context, child) => Scaffold(
            backgroundColor: Colors.white,
            body: child,
          ),
        )
      ],
    );
  }
}
