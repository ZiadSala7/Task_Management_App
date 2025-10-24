import 'package:flutter/material.dart';

abstract class AppColors {
  // Core Brand Colors
  static const Color primaryBlue = Color(0xFF4285F4);
  static const Color primaryIndigo = Color(0xFF8687E7);
  static const Color primaryViolet = Color(0xFF8E7CFF);
  static const Color primaryGreen = Color(0xFF34A853);
  static const Color primaryTeal = Color(0xFF00A372);
  static const Color accentCyan = Color(0xFF00A3A3);
  static const Color accentMint = Color(0xFF41CCA7);
  static const Color accentYellow = Color(0xFFFBBC05);
  static const Color accentOrange = Color(0xFFFFCC80);
  static const Color accentRed = Color(0xFFEB4335);
  static const Color dangerRed = Color(0xFFFF4949);
  static const Color softRed = Color(0xFFFFC1C1);
  static const Color lightPink = Color(0xFFFFB3B6);
  static const Color accentMagenta = Color(0xFFA30089);
  static const Color disabledBackground = Color(0xFF4C4c7c);
  static const Color bottomNavClr = Color(0xff2E2E2E);

  // Grayscale Palette
  static const Color black = Color(0xFF000000);
  static const Color darkGray = Color(0xFF121212);
  static const Color gray900 = Color(0xFF1D1D1D);
  static const Color gray800 = Color(0xFF272727);
  static const Color gray700 = Color(0xFF363636);
  static const Color gray600 = Color(0xFF4C4C4C);
  static const Color gray500 = Color(0xFF646464);
  static const Color gray400 = Color(0xFF979797);
  static const Color gray300 = Color(0xFFAFAFAF);
  static const Color gray200 = Color(0xFFD7D7D7);
  static const Color gray150 = Color(0xFFE0E0E0);
  static const Color gray100 = Color(0xFFF0F0F0);
  static const Color gray50 = Color(0xFFF5F5F5);
  static const Color gray0 = Color(0xFF535353);

  // Whites with different transparencies
  static const Color white = Color(0xFFFFFFFF);
  static const Color white98 = Color(0xFAFFFFFF);
  static const Color white60 = Color(0x99FFFFFF);
  static const Color white40 = Color(0x66FFFFFF);
  static const Color white20 = Color(0x33FFFFFF);
  static const Color white10 = Color(0x1AFFFFFF);

  // Additional Thematic Colors
  static const Color warningYellow = Color(0xFFFFC3BD);
  static const Color successGreen = Color(0xFF00A32F);
  static const Color softBlue = Color(0xFF8EA8DD);
  static const Color skyBlue = Color(0xFF54ADFF);
  static const Color lightViolet = Color(0xFFBCBDFF);
  static const Color dustyRose = Color(0xFFE98896);
  static const Color peach = Color(0xFFFF9680);
  static const Color softPurple = Color(0xFF8875FF);
  static const Color deepNavy = Color(0xFF03053F);
  static const Color steelBlue = Color(0xFF283544);
  static const Color midnight = Color(0xFF1A2033);

  // A single list containing all defined colors
  static const List<Color> allAppColors = [
    primaryBlue,
    primaryIndigo,
    primaryViolet,
    primaryGreen,
    primaryTeal,
    accentCyan,
    accentMint,
    accentYellow,
    accentOrange,
    accentRed,
    dangerRed,
    softRed,
    lightPink,
    accentMagenta,
    black,
    darkGray,
    gray900,
    gray800,
    gray700,
    gray600,
    gray500,
    gray400,
    gray300,
    gray200,
    gray150,
    gray100,
    gray50,
    white,
    white98,
    white60,
    white40,
    white20,
    white10,
    warningYellow,
    successGreen,
    softBlue,
    skyBlue,
    lightViolet,
    dustyRose,
    peach,
    softPurple,
    deepNavy,
    steelBlue,
    midnight,
  ];
}
