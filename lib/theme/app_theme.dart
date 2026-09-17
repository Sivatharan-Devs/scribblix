import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scribblix/theme/app_colors.dart';

class AppRadius {
  static const lg = 28.0;
  static const md = 18.0;
  static const sm = 12.0;
}

class AppTheme {
  AppTheme._();

  static TextTheme _textTheme(AppColors c) {
    final display = GoogleFonts.fredoka();
    final body = GoogleFonts.plusJakartaSans();
    return TextTheme(
      // Wordmark / big display
      displayLarge: display.copyWith(
        fontSize: 38,
        fontWeight: FontWeight.w700,
        color: c.ink,
        letterSpacing: -0.5,
      ),
      // Screen titles
      headlineMedium: display.copyWith(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: c.ink,
      ),
      // Section headings
      headlineSmall: display.copyWith(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: c.ink,
      ),
      // Body text
      bodyLarge: body.copyWith(
        fontSize: 15,
        fontWeight: FontWeight.w400,
        color: c.ink,
      ),
      bodyMedium: body.copyWith(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: c.inkSoft,
      ),
      bodySmall: body.copyWith(
        fontSize: 12.5,
        fontWeight: FontWeight.w600,
        color: c.inkFaint,
      ),
      // Buttons
      labelLarge: body.copyWith(
        fontSize: 15.5,
        fontWeight: FontWeight.w700,
        color: Colors.white,
      ),
      // Caption / eyebrow labels
      labelSmall: body.copyWith(
        fontSize: 11,
        fontWeight: FontWeight.w800,
        color: c.inkFaint,
        letterSpacing: 1,
      ),
    );
  }

  static ThemeData light() {
    const c = AppColors.light;
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      scaffoldBackgroundColor: c.paper,
      colorScheme: ColorScheme.fromSeed(
        seedColor: c.violet,
        brightness: Brightness.light,
        primary: c.violet,
        surface: c.paperRaised,
      ),
      extensions: const [AppColors.light],
      textTheme: _textTheme(c),
      splashFactory: InkRipple.splashFactory,
      dividerColor: c.line,
      fontFamily: GoogleFonts.plusJakartaSans().fontFamily,
    );
  }

  static ThemeData dark() {
    const c = AppColors.dark;
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: c.paper,
      colorScheme: ColorScheme.fromSeed(
        seedColor: c.violet,
        brightness: Brightness.dark,
        primary: c.violet,
        surface: c.paperRaised,
      ),
      extensions: const [AppColors.dark],
      textTheme: _textTheme(c),
      splashFactory: InkRipple.splashFactory,
      dividerColor: c.line,
      fontFamily: GoogleFonts.plusJakartaSans().fontFamily,
    );
  }
}
