import 'package:flutter/material.dart';

const Color primaryColor = Color(0xFF1a535b);
const Color secondColor = Color(0xFF4ccdc4);
const Color thirdColor = Color(0XFFf5fff5);

const List<Color> _colorThemes = [primaryColor, secondColor, thirdColor];

class AppTheme {
  final int selectedColor;

  AppTheme({required this.selectedColor})
      : assert(selectedColor >= 0 && selectedColor <= 2, 'Color out of range');

  Color get colorPrimary => _colorThemes[selectedColor];

  Color get colorAccent => _colorThemes[selectedColor + 1];

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[1],
    );
  }
}
