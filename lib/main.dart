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
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.interTextTheme(),
        useMaterial3: true,
        brightness: Brightness.light,
      ),
      home: const DashboardESG(),
    );
  }
}
