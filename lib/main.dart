import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:howsfeeling/Binding/Bindings.dart';
import 'package:howsfeeling/Localization/Localization.dart';
import 'package:howsfeeling/Views/Screens/splashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      locale: LocalizationServices.locale,
      fallbackLocale: LocalizationServices.fallbackLocale,
      translations: LocalizationServices(),
      debugShowCheckedModeBanner: false,
      title: 'Kya Baat',
      theme: ThemeData(
        fontFamily: 'ariel',
        // textTheme: GoogleFonts.ari,

        primarySwatch: Colors.green,
      ),
      initialBinding: InitialBindings(),
      home: const SplasScreen(),
    );
  }
}
