import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'common/routes/app_route.dart';

final appRouter = AppRouter();

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(
          inputDecorationTheme: InputDecorationTheme(
            fillColor: Colors.white,
            filled: true,
            focusColor: Colors.black,
            labelStyle: const TextStyle(color: Colors.black),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: Colors.black)),
            outlineBorder: BorderSide(color: Colors.grey.shade100),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: Colors.grey.shade100)),
          ),
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.grey.shade100,
            scrolledUnderElevation: 0,
          ),
          scaffoldBackgroundColor: Colors.grey.shade100,
          textTheme: GoogleFonts.poppinsTextTheme()),
      routerConfig: appRouter.config(),
    );
  }
}
