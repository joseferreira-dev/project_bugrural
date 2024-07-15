import 'package:bugrural/widgets/navigation_bar.dart';
import 'package:flutter/material.dart';

class AlertDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String alertTitle = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: Text(alertTitle),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Add detailed information about the alert
            Card(
              child: ListTile(
                title: Text(alertTitle),
                subtitle: Text('Detalhes sobre o alerta.'),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomNavigationBar(),
    );
  }
}
