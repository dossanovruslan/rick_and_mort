import 'package:flutter/material.dart';
import 'package:rick_and_morty/core/theme/models/color_palette.dart';

abstract class AppColorScheme {
  Color get primary;

  Color get white;

  Color get grey;

  Color get green;

  Color get red;

  Color get textColor;
}

class LightScheme implements AppColorScheme {
  const LightScheme();

  @override
  Color get primary => ColorPalette.primary;

  @override
  Color get white => ColorPalette.white;

  @override
  Color get grey => ColorPalette.grey;

  @override
  Color get green => ColorPalette.green;

  @override
  Color get textColor => ColorPalette.textColor;

  @override
  Color get red => ColorPalette.red;
}

class DarkScheme implements AppColorScheme {
  const DarkScheme();

  @override
  Color get primary => ColorPalette.primary;

  @override
  Color get white => ColorPalette.white;

  @override
  Color get grey => ColorPalette.grey;

  @override
  Color get green => ColorPalette.green;

  @override
  Color get textColor => ColorPalette.textColor;

  @override
  Color get red => ColorPalette.red;
}
