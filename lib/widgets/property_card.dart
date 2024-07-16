import 'package:bugrural/models/property.dart';
import 'package:bugrural/utils/routes.dart';
import 'package:flutter/material.dart';

class PropertyCard extends StatelessWidget {
  final Property property;

  const PropertyCard({super.key, required this.property});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: property.backgroundColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 4.0),
        child: ListTile(
          leading: property.icon,
          title: Text(
            property.name,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(property.location),
          onTap: () {
            Navigator.pushNamed(
              context,
              Routes.propertyDetail,
              arguments: property,
            );
          },
        ),
      ),
    );
  }
}
