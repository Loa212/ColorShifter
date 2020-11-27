import 'package:flutter/cupertino.dart';

class Palette {
  final Color primary;
  final Color secondary;
  final Color accent;
  final Color text;

  Palette({this.primary, this.secondary, this.accent, this.text});
}

final List<Palette> palettes = [
  Palette(
    primary: Color(0xFF8E5572),
    secondary: Color(0xFFFED766),
    accent: Color(0xFF009FB7),
    text: Color(0xFFE6E6EA),
  ),
  Palette(
    primary: Color(0xFF403D58),
    secondary: Color(0xFF66D7D1),
    accent: Color(0xFFFC7753),
    text: Color(0xFFF2EFEA),
  ),
  Palette(
    primary: Color(0xFFFF6542),
    secondary: Color(0xFF114B5F),
    accent: Color(0xFF38241d),
    text: Color(0xFFD6D4A0),
  ),
  Palette(
    primary: Color(0xFF687c9c),
    secondary: Color(0xFF4f0f09),
    accent: Color(0xFFA78A7F),
    text: Color(0xFFE6E6EA),
  ),
];
