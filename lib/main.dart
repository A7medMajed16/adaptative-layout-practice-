import 'package:adaptaive_layout_practice/views/home_view.dart'; // Importing home view file
import 'package:flutter/material.dart'; // Importing Flutter's Material Design library

/// Defines the main function as the entry point of the app
void main() {
  runApp(const AdaptiveApp()); // Running the AdaptiveApp widget
}

class AdaptiveApp extends StatelessWidget {
  /// Declaring a StatelessWidget named AdaptiveApp
  const AdaptiveApp(
      {super.key}); // Defining the constructor with required super.key parameter

  @override
  Widget build(BuildContext context) {
    // Overriding the build method to return a Widget
    return MaterialApp(
      /// Returning MaterialApp widget as the base structure for the app
      debugShowCheckedModeBanner: false, // Hiding the debug banner
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor:
            const Color(0xffDBDBDB), // Setting light background color
      ), // Copying the current theme and adding custom properties
      home: const HomeView(), // Setting HomeView as the home screen
    );
  }
}
