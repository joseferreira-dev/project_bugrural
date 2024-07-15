import 'package:bugrural/models/property.dart';
import 'package:bugrural/utils/routes.dart';
import 'package:bugrural/widgets/navigation_bar.dart';
import 'package:flutter/material.dart';

class PropertyDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Property property = ModalRoute.of(context)!.settings.arguments as Property;

    return Scaffold(
      appBar: AppBar(
        title: Text(property.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.asset('assets/images/property_image.png'),
            Card(
              child: ListTile(
                leading: Icon(Icons.phone),
                title: Text(property.name),
                subtitle: Text(property.location),
                onTap: () {
                  // Implement call to owner
                },
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  _buildManagementCard(context, 'Microclima', Routes.microclimate),
                  _buildManagementCard(context, 'Pragas', Routes.pest),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomNavigationBar(),
    );
  }

  Widget _buildManagementCard(BuildContext context, String title, String route) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.info),
        title: Text(title),
        onTap: () {
          Navigator.pushNamed(context, route);
        },
      ),
    );
  }
}
