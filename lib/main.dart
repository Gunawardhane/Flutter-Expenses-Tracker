import 'package:flutter/material.dart';
import 'package:expense_tracker/widgets/expenses.dart';

var kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 77, 36, 173),
);

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        useMaterial3: true, // Enables Material 3 styles
        colorScheme: kColorScheme,
        appBarTheme: AppBarTheme(
          backgroundColor:
              kColorScheme.primary, // Use primary color for app bar
          foregroundColor:
              kColorScheme.onPrimary, // Use onPrimary for text color
        ),
      ),
      home: const Expenses(),
    ),
  );
}
