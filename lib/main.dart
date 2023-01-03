import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Screens/DashboardESG/dashboard_esg_screen.dart';

void main() {
  runApp(const AmbisisTest());
}

class AmbisisTest extends StatelessWidget {
  const AmbisisTest({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ambisis Test',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.interTextTheme(),
        useMaterial3: true,
        brightness: Brightness.light,
        scaffoldBackgroundColor: const Color.fromARGB(255, 214, 214, 216),
        primaryColorDark: const Color.fromARGB(255, 18, 3, 9),
        primaryColorLight: Colors.white,
        primaryColor: const Color.fromARGB(255, 4, 74, 58),
        secondaryHeaderColor: const Color.fromARGB(178, 18, 3, 9),
        unselectedWidgetColor: const Color.fromARGB(25, 4, 74, 58),
      ),
      home: const DashboardESG(),
    );
  }
}
