import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// constantes con los colores predominantes que se van a usar en el aplicativo

const primaryColor = Color(0xFFCCAD5C);
const secondaryColor = Color(0xFF000000);
const bgColor = Color(0xFF000000);
const defaultPadding = 16.0;

// definición del tema claro

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: primaryColor,
  canvasColor: secondaryColor,
  backgroundColor: Colors.white,
  scaffoldBackgroundColor: Colors.white,
  drawerTheme: DrawerThemeData(backgroundColor: const Color(0xFFFF2F0F2)),
  textTheme: GoogleFonts.poppinsTextTheme()
      .apply(bodyColor: primaryColor),
  elevatedButtonTheme: const ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStatePropertyAll(primaryColor),
      foregroundColor: MaterialStatePropertyAll(Colors.white),
    ),
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(backgroundColor: const Color(0xFFFF2F0F2), foregroundColor: primaryColor),
);

// definición del tema oscuro

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: primaryColor,
  backgroundColor: bgColor,
  canvasColor: secondaryColor,
  textTheme: GoogleFonts.poppinsTextTheme()
      .apply(bodyColor: Colors.white),
  elevatedButtonTheme: const ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStatePropertyAll(primaryColor),
      foregroundColor: MaterialStatePropertyAll(Colors.white),
    ),
  ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(backgroundColor: secondaryColor, foregroundColor: primaryColor),
);
