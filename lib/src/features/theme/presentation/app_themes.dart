import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class AppTheme {
  static TextTheme lightTextTheme = TextTheme(
    bodyText1: GoogleFonts.urbanist(
      color: AppColors.black,
      fontWeight: FontWeight.w500,
      fontSize: 14,
    ),
    bodyText2: GoogleFonts.urbanist(
      color: AppColors.grey,
      fontWeight: FontWeight.w500,
      fontSize: 14,
    ),
    headline1: GoogleFonts.urbanist(
      color: AppColors.black,
      fontSize: 32,
      fontWeight: FontWeight.w700,
    ),
    headline2: GoogleFonts.urbanist(
      color: AppColors.black,
      fontSize: 21,
      fontWeight: FontWeight.w700,
    ),
    headline3: GoogleFonts.urbanist(
      color: AppColors.black,
      fontSize: 16,
      fontWeight: FontWeight.w600,
    ),
    headline4: GoogleFonts.urbanist(
      color: AppColors.darkGrey,
      fontWeight: FontWeight.w600,
      fontSize: 14,
    ),
    headline6: GoogleFonts.urbanist(
      color: AppColors.black,
      fontSize: 18,
      fontWeight: FontWeight.w600,
    ),
  );

  static TextTheme darkTextTheme = TextTheme(
    bodyText1: GoogleFonts.urbanist(
      color: AppColors.white,
      fontWeight: FontWeight.w500,
      fontSize: 14,
    ),
    bodyText2: GoogleFonts.urbanist(
      color: AppColors.white,
      fontWeight: FontWeight.w500,
      fontSize: 14,
    ),
    headline1: GoogleFonts.urbanist(
      color: AppColors.white,
      fontSize: 32,
      fontWeight: FontWeight.w700,
    ),
    headline2: GoogleFonts.urbanist(
      color: AppColors.white,
      fontSize: 21,
      fontWeight: FontWeight.w700,
    ),
    headline3: GoogleFonts.urbanist(
      color: AppColors.white,
      fontSize: 16,
      fontWeight: FontWeight.w600,
    ),
    headline4: GoogleFonts.urbanist(
      color: AppColors.white,
      fontWeight: FontWeight.w600,
      fontSize: 14,
    ),
    headline6: GoogleFonts.urbanist(
      color: AppColors.white,
      fontSize: 18,
      fontWeight: FontWeight.w600,
    ),
  );

  static ThemeData lightTheme() {
    return ThemeData(
      brightness: Brightness.light,
      scaffoldBackgroundColor: AppColors.white,
      primaryColor: AppColors.primary,
      canvasColor: AppColors.white,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: AppColors.white,
      ),
      checkboxTheme: CheckboxThemeData(
        checkColor: MaterialStateColor.resolveWith(
          (states) => AppColors.white,
        ),
        fillColor: MaterialStateColor.resolveWith(
          (states) => AppColors.primary,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
      ),
      appBarTheme: const AppBarTheme(
        foregroundColor: AppColors.black,
        backgroundColor: AppColors.white,
        elevation: 0,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: AppColors.white,
          textStyle: GoogleFonts.urbanist(
            color: AppColors.white,
            fontSize: 15.5,
            fontWeight: FontWeight.w600,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          padding: const EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 18,
          ),
          minimumSize: const Size.fromHeight(0),
          elevation: 0,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          foregroundColor: AppColors.black,
          side: BorderSide(
            width: .6,
            color: Colors.grey.shade200,
          ),
          textStyle: GoogleFonts.urbanist(
            color: AppColors.black,
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          padding: const EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 18,
          ),
          minimumSize: const Size.fromHeight(0),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          backgroundColor: AppColors.bgRed,
          foregroundColor: AppColors.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          textStyle: GoogleFonts.urbanist(
            color: AppColors.white,
            fontSize: 15.5,
            fontWeight: FontWeight.w600,
          ),
          padding: const EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 18,
          ),
          minimumSize: const Size.fromHeight(0),
        ),
      ),
      dialogTheme: DialogTheme(
        backgroundColor: AppColors.white,
        titleTextStyle: GoogleFonts.urbanist(
          color: AppColors.primary,
          fontSize: 24,
          fontWeight: FontWeight.w700,
        ),
        contentTextStyle: GoogleFonts.urbanist(
          color: AppColors.primary,
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
      dividerTheme: DividerThemeData(
        color: Colors.grey.shade200,
        space: .6,
      ),
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 18,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          gapPadding: 12,
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          gapPadding: 12,
          borderSide: const BorderSide(
            width: 1,
            color: AppColors.transparent,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          gapPadding: 12,
          borderSide: const BorderSide(
            width: 1,
            color: AppColors.primary,
          ),
        ),
        errorStyle: GoogleFonts.urbanist(
          fontWeight: FontWeight.w600,
          letterSpacing: .2,
          fontSize: 12,
        ),
        fillColor: const Color(0xFFFAFAFA),
        filled: true,
        iconColor: const Color(0xFF9E9E9E),
        hintStyle: GoogleFonts.urbanist(
          color: const Color(0xFF9E9E9E),
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
      ),
      colorScheme: ColorScheme.fromSwatch().copyWith(
        secondary: AppColors.primary,
        primary: AppColors.primary,
      ),
      textTheme: lightTextTheme,
    );
  }

  static ThemeData darkTheme() {
    return ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: AppColors.scafoldBackgroundBlack,
      primaryColor: AppColors.primary,
      canvasColor: const Color(0xFF1F222A),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: AppColors.dark,
      ),
      checkboxTheme: CheckboxThemeData(
        checkColor: MaterialStateColor.resolveWith(
          (states) => AppColors.white,
        ),
        fillColor: MaterialStateColor.resolveWith(
          (states) => AppColors.primary,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
      ),
      appBarTheme: const AppBarTheme(
        foregroundColor: AppColors.white,
        backgroundColor: AppColors.hintDark,
        elevation: 0,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: AppColors.white,
          padding: const EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 18,
          ),
          minimumSize: const Size.fromHeight(0),
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          textStyle: GoogleFonts.urbanist(
            color: AppColors.white,
            fontSize: 15.5,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: AppColors.darkGrey.withOpacity(.45),
          foregroundColor: AppColors.white,
          side: const BorderSide(
            width: .6,
            color: Colors.grey,
          ),
          textStyle: GoogleFonts.urbanist(
            color: AppColors.black,
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          padding: const EdgeInsets.symmetric(
            vertical: 18,
            horizontal: 20,
          ),
          minimumSize: const Size.fromHeight(0),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          backgroundColor: AppColors.darkThin,
          foregroundColor: AppColors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          textStyle: GoogleFonts.urbanist(
            color: AppColors.white,
            fontSize: 15.5,
            fontWeight: FontWeight.w600,
          ),
          padding: const EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 18,
          ),
          minimumSize: const Size.fromHeight(0),
        ),
      ),
      dialogTheme: DialogTheme(
        backgroundColor: AppColors.dark,
        titleTextStyle: GoogleFonts.urbanist(
          color: AppColors.primary,
          fontSize: 24,
          fontWeight: FontWeight.w700,
        ),
        contentTextStyle: GoogleFonts.urbanist(
          color: AppColors.primary,
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
      dividerTheme: DividerThemeData(
        color: Colors.grey.shade200,
        space: .6,
      ),
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 18,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          gapPadding: 12,
          borderRadius: BorderRadius.circular(12),
        ),
        errorStyle: GoogleFonts.urbanist(
          fontWeight: FontWeight.w600,
          letterSpacing: .2,
          fontSize: 12,
        ),
        fillColor: const Color(0xFF1F222A),
        filled: true,
        iconColor: const Color(0xFF9E9E9E),
        hintStyle: GoogleFonts.urbanist(
          color: const Color(0xFF9E9E9E),
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
      ),
      /*    colorScheme: ColorScheme.fromSwatch().copyWith(
        secondary: AppColors.primary,
        primary: AppColors.primary,
      ), */
      textTheme: darkTextTheme,
    );
  }
}
