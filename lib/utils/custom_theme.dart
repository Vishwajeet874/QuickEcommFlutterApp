import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; // For easier font integration

// Define your color palette
const Color primaryGreen = Color(0xFF4CAF50); // A fresh green
const Color primaryGreenLight = Color(0xFFE8F5E9); // Lighter tint
const Color primaryGreenDark = Color(0xFF2E7D32); // Darker tint

const Color accentOrange = Color(0xFFFF9800); // A warm accent
const Color accentOrangeLight = Color(0xFFFFF3E0);

const Color surfaceWhite = Color(0xFFFFFFFF);
const Color surfaceBlack = Color(0xFF4C4F4D);
const Color backgroundLightGrey = Color(0xFFF5F5F5);

const Color textDark = Color(0xFF212121);
const Color textMedium = Color(0xFF757575);
const Color textLight = Color(0xFFBDBDBD);

const Color errorRed = Color(0xFFD32F2F);

ThemeData CustomTheme() {
  return ThemeData(
    // 1. Color Scheme (using ColorScheme.fromSeed or custom)
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: primaryGreen,
      onPrimary: surfaceWhite,
      primaryContainer: primaryGreenLight,
      onPrimaryContainer: textDark,
      secondary: accentOrange,
      onSecondary: surfaceWhite,
      secondaryContainer: accentOrangeLight,
      onSecondaryContainer: textDark,
      tertiary: primaryGreenDark,
      onTertiary: surfaceWhite,
      error: errorRed,
      onError: surfaceWhite,
      background: backgroundLightGrey,
      onBackground: textDark,
      surface: surfaceWhite,
      onSurface: textDark,
      surfaceTint: primaryGreen, // Often used for scroll effects, etc.
    ),

    // 2. Typography (TextTheme)
    textTheme: TextTheme(
      displayLarge: GoogleFonts.poppins(
          fontSize: 57, fontWeight: FontWeight.bold, color: textDark),
      displayMedium: GoogleFonts.poppins(
          fontSize: 45, fontWeight: FontWeight.bold, color: textDark),
      displaySmall: GoogleFonts.poppins(
          fontSize: 36, fontWeight: FontWeight.bold, color: textDark),
      headlineLarge: GoogleFonts.poppins(
          fontSize: 32, fontWeight: FontWeight.bold, color: textDark),
      headlineMedium: GoogleFonts.poppins(
          fontSize: 28, fontWeight: FontWeight.bold, color: textDark),
      headlineSmall: GoogleFonts.poppins(
          fontSize: 24, fontWeight: FontWeight.bold, color: textDark),
      titleLarge: GoogleFonts.poppins(
          fontSize: 22, fontWeight: FontWeight.w600, color: textDark),
      titleMedium: GoogleFonts.poppins(
          fontSize: 16, fontWeight: FontWeight.w600, color: textDark),
      titleSmall: GoogleFonts.poppins(
          fontSize: 14, fontWeight: FontWeight.w600, color: textDark),
      bodyLarge: GoogleFonts.openSans(
          fontSize: 16, fontWeight: FontWeight.normal, color: textDark),
      bodyMedium: GoogleFonts.openSans(
          fontSize: 14, fontWeight: FontWeight.normal, color: textMedium),
      bodySmall: GoogleFonts.openSans(
          fontSize: 12, fontWeight: FontWeight.normal, color: textMedium),
      labelLarge: GoogleFonts.openSans(
          fontSize: 14, fontWeight: FontWeight.w500, color: textDark),
      labelMedium: GoogleFonts.openSans(
          fontSize: 12, fontWeight: FontWeight.w500, color: textLight),
      labelSmall: GoogleFonts.openSans(
          fontSize: 11, fontWeight: FontWeight.w500, color: textLight),
    ),

    // 3. Button Themes
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryGreen,
        foregroundColor: surfaceWhite,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        textStyle:
            GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: primaryGreen,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        textStyle:
            GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: primaryGreen,
        side: const BorderSide(color: primaryGreen, width: 1.5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        textStyle:
            GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500),
      ),
    ),

    // 4. Input Decoration Theme
    inputDecorationTheme: InputDecorationTheme(
      filled: false,
      fillColor: surfaceWhite,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide.none, // No border for filled fields
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: const BorderSide(color: primaryGreen, width: 2.0),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: const BorderSide(color: Colors.grey, width: 1.0),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: const BorderSide(color: errorRed, width: 2.0),
      ),
      labelStyle: GoogleFonts.openSans(color: textMedium, fontSize: 16),
      hintStyle: GoogleFonts.openSans(color: textLight, fontSize: 16),
      contentPadding:
          const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
    ),

    // 5. App Bar Theme
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      foregroundColor: surfaceBlack, // Text and icon color
      elevation: 0, // Flat design
      titleTextStyle: GoogleFonts.poppins(
          fontSize: 20, fontWeight: FontWeight.w600, color: surfaceBlack),
      iconTheme: const IconThemeData(color: surfaceBlack),
      actionsIconTheme: const IconThemeData(color: surfaceBlack),
    ),

    // 6. Card Theme
    cardTheme: CardTheme(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      color: surfaceWhite,
      margin: const EdgeInsets.all(8.0), // Default margin for cards
    ),

    // 7. Icon Theme
    iconTheme: const IconThemeData(
      color: textMedium, // Default icon color
    ),

    // 8. Scaffold Background Color

    // 9. Bottom Navigation Bar Theme (Common in grocery apps)
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: surfaceWhite,
      selectedItemColor: primaryGreen,
      unselectedItemColor: textLight,
      selectedLabelStyle:
          GoogleFonts.openSans(fontSize: 12, fontWeight: FontWeight.w600),
      unselectedLabelStyle:
          GoogleFonts.openSans(fontSize: 12, fontWeight: FontWeight.normal),
      type: BottomNavigationBarType.fixed,

      // Or shifting
    ),

    // 10. Floating Action Button Theme
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      foregroundColor: primaryGreen,
      shape: CircleBorder(
        eccentricity: 0.5, // Slightly rounded
      ),
    ),
    navigationBarTheme: const NavigationBarThemeData(
      backgroundColor: surfaceWhite,
      indicatorColor: primaryGreen,
      labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
      iconTheme: WidgetStatePropertyAll(
        IconThemeData(
          color: Colors.black,
        ),
      ),
      labelTextStyle: WidgetStatePropertyAll(
        TextStyle(color: textDark),
      ),
    ),
  );
}
