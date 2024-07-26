import 'package:flutter/material.dart';
import 'app_pallete.dart';
import '../common/app_string.dart';
import '../common/app_style.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightAppTheme = ThemeData(
    scaffoldBackgroundColor: AppPallete.backgroundColor,
    appBarTheme:
        const AppBarTheme(color: AppPallete.backgroundColor, centerTitle: true,titleTextStyle:TextStyle(
            fontSize: 24.0, fontWeight: FontWeight.w400, color: Colors.white) ),
    dialogTheme: const DialogTheme(
      shape: RoundedRectangleBorder(
        side: BorderSide(color: AppPallete.backgroundColor, width: 1.0),
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
        labelStyle: const TextStyle(
          color: AppPallete.whiteColor,
          fontWeight: FontWeight.w500,
        ),
        hintStyle: const TextStyle(
          color: AppPallete.whiteColor,
          fontWeight: FontWeight.w400,
        ),
        enabledBorder: border(),
        focusedBorder: border(AppPallete.gradient2),
        errorBorder: border(AppPallete.errorColor),
        border: border()),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style:
          ElevatedButton.styleFrom(backgroundColor: AppPallete.backgroundColor),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppPallete.backgroundColor,
    ),
    fontFamily: AppString.appFont,
    primarySwatch: Colors.blue,
    textTheme: const TextTheme(
      labelSmall: TextStyle(
          fontSize: 12.0, fontWeight: FontWeight.w400, color: Colors.white),
      labelMedium: TextStyle(
          fontSize: 13.0, fontWeight: FontWeight.w500, color: Colors.white),
      labelLarge: TextStyle(
        fontSize: 15.0,
        fontWeight: FontWeight.w700,
        color: Colors.white,
      ),
      titleSmall: TextStyle(
          fontSize: 12.0, fontWeight: FontWeight.w400, color: Colors.white),
      titleMedium: TextStyle(
          fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.white),
      titleLarge: TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.w700,
        color: Colors.white,
      ),
      headlineLarge: TextStyle(
          fontSize: 15.0, fontWeight: FontWeight.w400, color: Colors.white),
      headlineMedium: TextStyle(
          fontSize: 16.0, fontWeight: FontWeight.w500, color: Colors.white),
      headlineSmall: TextStyle(
          fontSize: 20.0, fontWeight: FontWeight.w700, color: Colors.white),

      bodySmall: TextStyle(
          fontSize: 12.0, fontWeight: FontWeight.w400, color: Colors.white),
      bodyMedium: TextStyle(
          fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.white),
      bodyLarge: TextStyle(
          fontSize: 16.0, fontWeight: FontWeight.w700, color: Colors.white),
      displaySmall: TextStyle(
          fontSize: 40, fontWeight: FontWeight.w400, color: Colors.white),
      displayMedium: TextStyle(
          fontSize: 45.0, fontWeight: FontWeight.w500, color: Colors.white),
      displayLarge: TextStyle(
          fontSize: 50.0, fontWeight: FontWeight.w700, color: Colors.white),
    ),

    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: Colors.white,
        shape: const RoundedRectangleBorder(
          side: BorderSide(color: Colors.grey),
        ),
      ),
    ),
    timePickerTheme: TimePickerThemeData(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        side: BorderSide(color: Colors.grey, width: 2),
      ),
      dialHandColor: AppPallete.backgroundColor,
      hourMinuteColor: MaterialStateColor.resolveWith(
        (states) => states.contains(MaterialState.selected)
            ? AppPallete.backgroundColor
            : Colors.black12,
      ),
      hourMinuteTextColor: MaterialStateColor.resolveWith(
        (states) => states.contains(MaterialState.selected)
            ? Colors.black54
            : Colors.grey,
      ),
      dayPeriodBorderSide: const BorderSide(color: Colors.grey),
      dayPeriodShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      dayPeriodColor: Colors.transparent,
      dayPeriodTextColor: MaterialStateColor.resolveWith(
        (states) => states.contains(MaterialState.selected)
            ? AppPallete.backgroundColor
            : Colors.black12,
      ),
      hourMinuteShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: const BorderSide(color: Colors.black12),
      ),
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
    ),
  );
}
