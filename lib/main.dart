import 'package:catalog_app/pages/homepage.dart';
import 'package:catalog_app/pages/loginpage.dart';
import 'package:catalog_app/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(
      MaterialApp(
        themeMode: ThemeMode.dark,
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          fontFamily: GoogleFonts.lato().fontFamily,
        ),
        debugShowCheckedModeBanner: false,
        title: "Catalog App",
        initialRoute: MyRoute.loginRoute,
        routes: {
          "/": (context) => LoginPage(),
          MyRoute.homeRoute: (context) => HomePage(),
          MyRoute.loginRoute: (context) => LoginPage(),
        },
      ),
    );
