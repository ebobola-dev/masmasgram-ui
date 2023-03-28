import 'package:flutter/material.dart';
import 'package:masmasgram_ui/assets/colors/theme_colors.dart';
import 'package:masmasgram_ui/assets/themes/fonts.dart';

ThemeData getThemeData(BuildContext context) => ThemeData.light().copyWith(
      primaryColor: primaryColor,
      secondaryHeaderColor: secondaryColor,
      scaffoldBackgroundColor: backgroundColor,
      splashColor: primaryColor,
      iconTheme: const IconThemeData(color: iconColor),
      colorScheme: const ColorScheme.dark(
        background: backgroundColor,
        primary: primaryColor,
        secondary: secondaryColor,
        tertiary: tertiaryColor,
      ),
      textTheme: const TextTheme(
        titleLarge: TextStyle(
          fontSize: 39.0,
          fontWeight: FontWeight.bold,
          color: textColor,
        ),
        titleMedium: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
          color: textColor,
        ),
        titleSmall: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          color: textColor,
        ),
        displayLarge: TextStyle(
          fontSize: 20.0,
          color: textColor,
        ),
        bodyLarge: TextStyle(
          fontSize: 20.0,
          color: backgroundColor,
        ),
        bodyMedium: TextStyle(
          fontSize: 16.0,
          color: textColor,
        ),
        bodySmall: TextStyle(
          fontSize: 12.8,
          color: textColor,
        ),
      ).apply(
        fontFamily: defaultFont,
      ),
      appBarTheme: const AppBarTheme(
        centerTitle: true,
        color: secondaryColor,
        iconTheme: IconThemeData(color: iconColor),
        titleTextStyle: TextStyle(
          color: textColor,
          fontFamily: defaultFont,
          fontSize: 17.0,
        ),
      ),
      textSelectionTheme: const TextSelectionThemeData(cursorColor: textColor),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          disabledBackgroundColor: dividerColor,
          backgroundColor: textColor,
          surfaceTintColor: Colors.red,
          padding: const EdgeInsets.symmetric(
            vertical: 16.0,
            horizontal: 16.0,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7.5),
          ),
          shadowColor: textColor,
          textStyle: const TextStyle(
            color: backgroundColor,
            fontFamily: defaultFont,
            fontSize: 16.0,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: primaryColor,
          textStyle: const TextStyle(
            fontFamily: defaultFont,
            fontSize: 15.0,
            color: Colors.white,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        labelStyle: const TextStyle(
          color: greyTextColor,
          fontFamily: defaultFont,
          fontSize: 12.8,
          fontWeight: FontWeight.w400,
        ),
        floatingLabelStyle: const TextStyle(
          color: greyTextColor,
          fontFamily: defaultFont,
          fontSize: 15.8,
          fontWeight: FontWeight.w400,
        ),
        filled: true,
        fillColor: dividerColor,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 6.0,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7.5),
          borderSide: BorderSide.none,
        ),
      ),
      dialogBackgroundColor: backgroundColor,
      dialogTheme: const DialogTheme(
        alignment: Alignment.center,
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        titleTextStyle: TextStyle(
          fontFamily: defaultFont,
          fontSize: 17.0,
        ),
        contentTextStyle: TextStyle(
          fontFamily: defaultFont,
        ),
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
      ),
      popupMenuTheme: const PopupMenuThemeData(
        color: secondaryColor,
        elevation: 7.0,
        textStyle: TextStyle(
          fontSize: 15.0,
          fontFamily: defaultFont,
        ),
      ),
      cardTheme: CardTheme(
        color: secondaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      snackBarTheme: SnackBarThemeData(
        backgroundColor: Colors.grey[700],
        contentTextStyle: const TextStyle(
          fontSize: 15.0,
          fontFamily: defaultFont,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
