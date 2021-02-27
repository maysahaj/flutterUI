import 'package:flutter/material.dart';

// Colors that we use in our app
const kTextColor = Color(0xFF3C4046);

const double kDefaultPadding = 20.0;

Color _colorFromHex(String hexColor) {
  final hexCode = hexColor.replaceAll('#', '');
  return Color(int.parse('FF$hexCode', radix: 16));
}

Color kPrimaryColor = _colorFromHex("#000004");
Color kPrimaryColo2 = _colorFromHex("#C35817");

