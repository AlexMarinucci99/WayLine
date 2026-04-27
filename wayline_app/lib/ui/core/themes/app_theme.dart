import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  //Colori principali
  static const navy = Color(0xFF1A237E);
  static const navyDark = Color(0xFF0D1257);
  static const blue = Color(0xFF2979FF);
  static const teal = Color(0xFF00BCD4);
  static const amber = Color(0xFFFFC107);
  //colori per la light mode
  static const screenBackground = Color(0xFFF8F9FA);
  static const surfaceSoft = Color(0xFFF1F3F8);
  static const textPrimary = Color(0xFF1A1A2E);
  static const textSecondary = Color(0xFF5C6370);
  static const textTertiary = Color(0xFF9CA3AF);
  //colori per la dark mode
  static const darkBackground = Color(0xFF0D1221);
  static const darkSurface = Color(0xFF162032);
  static const darkSurfaceSoft = Color(0xFF1E2A3E);
  static const darkBorder = Color(0x1FFFFFFF);
  static const darkBorderStrong = Color(0x2EFFFFFF);
  static const darkTextPrimary = Color(0xFFEEF2FF);
  static const darkTextSecondary = Color(0xFF8EA5C8);
  static const darkTextTertiary = Color(0xFF546480);
  //palette per card ricerca home e navigazione
  static const searchCard = Color(0xFF151F30);
  static const searchCardInput = Color(0xFF0F1828);
  static const searchCardText = Color(0xFFDDE6F5);
  static const searchCardMuted = Color(0xFF7A97B8);
  static const searchCardLow = Color(0xFF435570);
  //colori card profilo impostazioni
  static const settingsProfileCardLightGradient = <Color>[
    Color.fromARGB(255, 234, 234, 238),
    Color.fromARGB(255, 241, 241, 243),
  ];
  static const settingsProfileCardDarkGradient = <Color>[
    Color.fromARGB(255, 230, 235, 235),
    Color.fromARGB(255, 233, 233, 236),
  ];
  static const settingsProfileCardLightBorder = Color.fromARGB(
    255,
    100,
    100,
    100,
  );
  static const settingsProfileAvatarStart = Color.fromARGB(255, 17, 17, 17);
  static const settingsProfileAvatarEnd = Color.fromARGB(255, 32, 32, 32);

  static ThemeData lightTheme(){
    final colorScheme = ColorScheme.fromSeed(seedColor: blue, brightness: Brightness.light, surface: screenBackground);

    final base = ThemeData(useMaterial3: true, colorScheme: colorScheme, scaffoldBackgroundColor: screenBackground);
     return base.copyWith(
      textTheme: GoogleFonts.interTextTheme(base.textTheme).copyWith(
         headlineLarge: GoogleFonts.inter(
          fontSize: 31,
          fontWeight: FontWeight.w800,
          color: textPrimary,
          letterSpacing: -0.9,
        ),
        headlineMedium: GoogleFonts.inter(
          fontSize: 24,
          fontWeight: FontWeight.w800,
          color: textPrimary,
          letterSpacing: -0.6,
        ),
        headlineSmall: GoogleFonts.inter(
          fontSize: 20,
          fontWeight: FontWeight.w700,
          color: textPrimary,
          letterSpacing: -0.4,
        ),
        titleLarge: GoogleFonts.inter(
          fontSize: 18,
          fontWeight: FontWeight.w700,
          color: textPrimary,
        ),
        titleMedium: GoogleFonts.inter(
          fontSize: 14,
          fontWeight: FontWeight.w700,
          color: textPrimary,
        ),
        bodyLarge: GoogleFonts.inter(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: textPrimary,
        ),
        bodyMedium: GoogleFonts.inter(
          fontSize: 13,
          fontWeight: FontWeight.w500,
          color: textSecondary,
        ),
        bodySmall: GoogleFonts.inter(
          fontSize: 11.5,
          fontWeight: FontWeight.w500,
          color: textTertiary,
        ),
        labelLarge: GoogleFonts.inter(
          fontSize: 10,
          fontWeight: FontWeight.w600,
          color: textTertiary,
          letterSpacing: 0.4,
        ),
        labelMedium: GoogleFonts.inter(
          fontSize: 10,
          fontWeight: FontWeight.w700,
          color: textPrimary,
        ),
      ),
      //appBarTheme
       appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        foregroundColor: colorScheme.onSurface,
        elevation: 0,
        surfaceTintColor: Colors.transparent,
        titleTextStyle: GoogleFonts.inter(
          fontSize: 18,
          fontWeight: FontWeight.w700,
          color: Colors.white,
          letterSpacing: -0.2,
        ),
      ),
       // Card piatte con angoli arrotondati.
      cardTheme: CardThemeData(
        color: Colors.white,
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      ),
      dividerColor: const Color(0xFFF0F2F8),
      // Chip usate per filtri, badge e stati.
      chipTheme: base.chipTheme.copyWith(
        backgroundColor: surfaceSoft,
        side: const BorderSide(color: Color(0xFFE0E4F0)),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        labelStyle: GoogleFonts.inter(
          fontSize: 12,
          fontWeight: FontWeight.w700,
          color: textPrimary,
        ),
      ),
      // Stile comune dei campi input: sfondo pieno e focus blu.
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.white,
        hintStyle: GoogleFonts.inter(fontSize: 14, color: textTertiary),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(22),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(22),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(22),
          borderSide: const BorderSide(color: blue, width: 1.5),
        ),
      ),
      // Pulsanti primari dell'app.
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: blue,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
          textStyle: GoogleFonts.inter(
            fontSize: 14,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      // Pulsanti secondari/bordati dell'app.
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: textSecondary,
          side: const BorderSide(color: Color(0xFFE0E4F0), width: 1.5),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(13),
          ),
          textStyle: GoogleFonts.inter(
            fontSize: 13,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  

/*static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      primarySwatch: Colors.blue,
      textTheme: GoogleFonts.latoTextTheme(),
    );
  }*/
  }
}
