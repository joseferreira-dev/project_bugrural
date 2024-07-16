import 'package:flutter/material.dart';

class Property {
  final String name;
  final String location;
  final String area;
  final Color backgroundColor;
  final Icon icon;
  final String image;
  bool pestStatus;

  Property({
    required this.name,
    required this.location,
    required this.area,
    required this.backgroundColor,
    required this.icon,
    required this.image,
    required this.pestStatus,
  });
}
