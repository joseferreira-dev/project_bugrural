import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'theme/app_theme.dart';

void main() {
  runApp(BugRuralApp());
}

class BugRuralApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bug Rural',
      theme: AppTheme.lightTheme,
      home: LoginScreen(),
    );
  }
}
