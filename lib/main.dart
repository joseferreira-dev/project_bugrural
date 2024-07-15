import 'package:bugrural/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:bugrural/utils/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bug Rural',
      theme: appTheme,
      initialRoute: Routes.login,
      routes: Routes.getRoutes(),
    );
  }
}
