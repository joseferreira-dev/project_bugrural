import 'package:bugrural/models/property.dart';
import 'package:bugrural/utils/routes.dart';
import 'package:flutter/material.dart';

class PropertyCard extends StatelessWidget {
  final Property property;

  const PropertyCard({Key? key, required this.property}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: property.backgroundColor,
      child: ListTile(
        leading: Icon(Icons.home),
        title: Text(property.name),
        subtitle: Text(property.location),
        onTap: () {
          Navigator.pushNamed(
            context,
            Routes.propertyDetail,
            arguments: property,
          );
        },
      ),
    );
  }
}
