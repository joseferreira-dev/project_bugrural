import 'package:flutter/material.dart';
import 'package:bugrural/screens/login_screen.dart';
import 'package:bugrural/screens/home_screen.dart';
import 'package:bugrural/screens/property_detail_screen.dart';
import 'package:bugrural/screens/microclimate_screen.dart';
import 'package:bugrural/screens/pest_screen.dart';
import 'package:bugrural/screens/detail_screen.dart';
import 'package:bugrural/screens/alerts_screen.dart';
import 'package:bugrural/screens/profile_screen.dart';
import 'package:bugrural/screens/alert_detail_screen.dart';

class Routes {
  static const String login = '/login';
  static const String home = '/home';
  static const String propertyDetail = '/propertyDetail';
  static const String microclimate = '/microclimate';
  static const String pest = '/pest';
  static const String detail = '/detail';
  static const String alerts = '/alerts';
  static const String profile = '/profile';
  static const String alertDetail = '/alertDetail';

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      login: (context) => LoginScreen(),
      home: (context) => HomeScreen(),
      propertyDetail: (context) => PropertyDetailScreen(),
      microclimate: (context) => MicroclimateScreen(),
      pest: (context) => PestScreen(),
      detail: (context) => DetailScreen(),
      alerts: (context) => AlertsScreen(),
      profile: (context) => ProfileScreen(),
      alertDetail: (context) => AlertDetailScreen(),
    };
  }
}
