import 'package:cts2/screens/base_screen.dart';
import 'package:cts2/screens/login_page.dart';
import 'package:flutter/material.dart';
import 'package:supabase/supabase.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async{
  await Supabase.initialize(
    url: 'https://uqnnldrrqxhfmzsojjkg.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InVxbm5sZHJycXhoZm16c29qamtnIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTc0MTYyNjQsImV4cCI6MjAxMjk5MjI2NH0.aJkBWVBMLgOy2nMQflAxVzXPueC7WXG7nZNFW4MsP4A'
 
  );
  runApp(const MyApp());
}

final supabase = Supabase.instance.client;



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Education App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Poppins',
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
          bodyLarge: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
          bodyMedium: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
          displayMedium: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 18,
            color: Colors.black,
          ),
        ),
      ),
      // home: const BaseScreen(),
      home: LoginPage(),

    );
  }
}
