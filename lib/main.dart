import 'package:app/screens/symptoms.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:app/screens/main_menu.dart';
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
    bodyMedium: GoogleFonts.assistant(
      fontSize: 16,
      color: Colors.black,
    ),
    bodyLarge: GoogleFonts.inter(
      fontSize: 20,
      fontStyle: FontStyle.italic,
      fontWeight: FontWeight.bold,
      color: const Color.fromARGB(255, 111, 33, 44),
    ),
  ),
);
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo prueba',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
