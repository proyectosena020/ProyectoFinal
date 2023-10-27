import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// constantes con los colores predominantes que se van a usar en el aplicativo

const primaryColor = Color(0xFF6800BD);
const secondaryColor = Color(0xFF2A2D3E);
const bgColor = Color(0xFF212332);
const defaultPadding = 16.0;

// definición del tema claro

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: primaryColor,
  canvasColor: secondaryColor,
  textTheme: GoogleFonts.poppinsTextTheme()
      .apply(bodyColor: primaryColor),
  elevatedButtonTheme: const ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStatePropertyAll(primaryColor),
      foregroundColor: MaterialStatePropertyAll(Colors.white),
    ),
  ),
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
);
