import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:app/screens/dynamic_screens/main_menu.dart';
import 'package:google_fonts/google_fonts.dart';

final theme = ThemeData(
  primarySwatch: Colors.pink,
  appBarTheme: AppBarTheme(
    backgroundColor: const Color.fromARGB(255, 247, 140, 154),
    titleTextStyle: GoogleFonts.inter(
      fontSize: 36,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.italic,
      color: Colors.white,
    ),
    centerTitle: true,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      backgroundColor: const Color.fromARGB(255, 247, 140, 154),
      foregroundColor: Colors.white,
      textStyle: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        shadows: [
          Shadow(
            // Top left shadow
            offset: Offset(-1.5, -1.5),
            color: Color.fromARGB(255, 109, 31, 44),
          ),
          Shadow(
            // Top right shadow
            offset: Offset(1.5, -1.5),
            color: Color.fromARGB(255, 109, 31, 44),
          ),
          Shadow(
            // Bottom right shadow
            offset: Offset(1.5, 1.5),
            color: Color.fromARGB(255, 109, 31, 44),
          ),
          Shadow(
            // Bottom left shadow
            offset: Offset(-1.5, 1.5),
            color: Color.fromARGB(255, 109, 31, 44),
          ),
        ],
      ),
    ),
  ),
  textTheme: TextTheme(
    //Fuente para el texto normal
    bodyMedium: GoogleFonts.assistant(
      fontSize: 16,
      color: Colors.black,
    ),
    bodySmall: GoogleFonts.assistant(
      color: Colors.red,
    ),
    //Fuente para subtítulos
    titleMedium: GoogleFonts.assistant(
      fontSize: 17.5,
      color: Colors.black,
      fontWeight: FontWeight.bold,
    ),
    //Fuente para títulos prinicipales
    titleLarge: GoogleFonts.assistant(
      fontSize: 18.5,
      color: Colors.black,
      fontWeight: FontWeight.bold,
    ),
    //Anteriormente bodylarge -> Valor de entrada en los text Field
    //Fuente para textos separadores
    headlineMedium: GoogleFonts.inter(
      fontSize: 20,
      fontStyle: FontStyle.italic,
      fontWeight: FontWeight.bold,
      color: const Color.fromARGB(255, 111, 33, 44),
    ),
    //Fuente para títulos de ventanas
    headlineLarge: GoogleFonts.inter(
      fontSize: 28,
      fontStyle: FontStyle.italic,
      fontWeight: FontWeight.bold,
      color: const Color.fromARGB(255, 111, 33, 44),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    labelStyle: GoogleFonts.assistant(
      fontSize: 15,
    ),
    hintStyle: GoogleFonts.assistant(
      fontSize: 15,
    ),
  ),
);
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((fn) {
    runApp(
      MaterialApp(
        theme: theme,
        //home: const MainMenu(),
        home: const MainMenu(),
      ),
    );
  });
}
