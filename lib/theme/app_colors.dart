import 'package:flutter/material.dart';

@immutable
class AppColors extends ThemeExtension<AppColors> {
  const AppColors({
    required this.paper,
    required this.paperRaised,
    required this.paperSunk,
    required this.ink,
    required this.inkSoft,
    required this.inkFaint,
    required this.line,
    required this.violet,
    required this.violetInk,
    required this.violetWash,
    required this.coral,
    required this.coralWash,
    required this.teal,
    required this.tealWash,
    required this.yellow,
    required this.yellowWash,
    required this.danger,
    required this.shadow,
  });

  final Color paper;
  final Color paperRaised;
  final Color paperSunk;
  final Color ink;
  final Color inkSoft;
  final Color inkFaint;
  final Color line;
  final Color violet;
  final Color violetInk;
  final Color violetWash;
  final Color coral;
  final Color coralWash;
  final Color teal;
  final Color tealWash;
  final Color yellow;
  final Color yellowWash;
  final Color danger;
  final Color shadow;

  static const light = AppColors(
    paper: Color(0xFFF6F3EC),
    paperRaised: Color(0xFFFFFFFF),
    paperSunk: Color(0xFFEDE9DF),
    ink: Color(0xFF18161F),
    inkSoft: Color(0xFF6E6A78),
    inkFaint: Color(0xFFA6A2AF),
    line: Color(0xFFE6E1D4),
    violet: Color(0xFF6C5CE7),
    violetInk: Color(0xFF4A3BC4),
    violetWash: Color(0xFFEEEBFC),
    coral: Color(0xFFFF6452),
    coralWash: Color(0xFFFFE9E4),
    teal: Color(0xFF12B3A0),
    tealWash: Color(0xFFDFF6F2),
    yellow: Color(0xFFFFC145),
    yellowWash: Color(0xFFFFF4DE),
    danger: Color(0xFFEF4444),
    shadow: Color(0x14181613),
  );

  static const dark = AppColors(
    paper: Color(0xFF151420),
    paperRaised: Color(0xFF1E1C2B),
    paperSunk: Color(0xFF100F18),
    ink: Color(0xFFF3F1EC),
    inkSoft: Color(0xFFADA9BB),
    inkFaint: Color(0xFF726D82),
    line: Color(0xFF312E42),
    violet: Color(0xFF6C5CE7),
    violetInk: Color(0xFFB7ACFF),
    violetWash: Color(0xFF26234A),
    coral: Color(0xFFFF6452),
    coralWash: Color(0xFF3A2422),
    teal: Color(0xFF12B3A0),
    tealWash: Color(0xFF0F2E2A),
    yellow: Color(0xFFFFC145),
    yellowWash: Color(0xFF332711),
    danger: Color(0xFFEF4444),
    shadow: Color(0x4D000000),
  );

  @override
  AppColors copyWith({
    Color? paper,
    Color? paperRaised,
    Color? paperSunk,
    Color? ink,
    Color? inkSoft,
    Color? inkFaint,
    Color? line,
    Color? violet,
    Color? violetInk,
    Color? violetWash,
    Color? coral,
    Color? coralWash,
    Color? teal,
    Color? tealWash,
    Color? yellow,
    Color? yellowWash,
    Color? danger,
    Color? shadow,
  }) {
    return AppColors(
      paper: paper ?? this.paper,
      paperRaised: paperRaised ?? this.paperRaised,
      paperSunk: paperSunk ?? this.paperSunk,
      ink: ink ?? this.ink,
      inkSoft: inkSoft ?? this.inkSoft,
      inkFaint: inkFaint ?? this.inkFaint,
      line: line ?? this.line,
      violet: violet ?? this.violet,
      violetInk: violetInk ?? this.violetInk,
      violetWash: violetWash ?? this.violetWash,
      coral: coral ?? this.coral,
      coralWash: coralWash ?? this.coralWash,
      teal: teal ?? this.teal,
      tealWash: tealWash ?? this.tealWash,
      yellow: yellow ?? this.yellow,
      yellowWash: yellowWash ?? this.yellowWash,
      danger: danger ?? this.danger,
      shadow: shadow ?? this.shadow,
    );
  }

  @override
  AppColors lerp(ThemeExtension<AppColors>? other, double t) {
    if (other is! AppColors) return this;
    Color c(Color a, Color b) => Color.lerp(a, b, t)!;
    return AppColors(
      paper: c(paper, other.paper),
      paperRaised: c(paperRaised, other.paperRaised),
      paperSunk: c(paperSunk, other.paperSunk),
      ink: c(ink, other.ink),
      inkSoft: c(inkSoft, other.inkSoft),
      inkFaint: c(inkFaint, other.inkFaint),
      line: c(line, other.line),
      violet: c(violet, other.violet),
      violetInk: c(violetInk, other.violetInk),
      violetWash: c(violetWash, other.violetWash),
      coral: c(coral, other.coral),
      coralWash: c(coralWash, other.coralWash),
      teal: c(teal, other.teal),
      tealWash: c(tealWash, other.tealWash),
      yellow: c(yellow, other.yellow),
      yellowWash: c(yellowWash, other.yellowWash),
      danger: c(danger, other.danger),
      shadow: c(shadow, other.shadow),
    );
  }
}

extension AppColorsX on BuildContext {
  AppColors get colors => Theme.of(this).extension<AppColors>()!;
}
