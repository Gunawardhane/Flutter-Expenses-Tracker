import 'package:flutter/material.dart';
import 'package:expense_tracker/widgets/expenses.dart';

var kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 30, 137, 199),
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
        cardTheme: const CardTheme().copyWith(
          color: kColorScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kColorScheme.primaryContainer,
          ),
        ),
        textTheme: ThemeData().textTheme.copyWith(
              titleLarge: TextStyle(
                  fontWeight: FontWeight.normal,
                  color: kColorScheme.onSecondaryContainer,
                  fontSize: 14),
            ),
      ),
      home: const Expenses(),
    ),
  );
}
