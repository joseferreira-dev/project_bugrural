import 'package:bugrural/utils/routes.dart';
import 'package:bugrural/widgets/navigation_bar.dart';
import 'package:flutter/material.dart';

class AlertsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alertas'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: 5, // Replace with actual alert count
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                leading: Icon(Icons.notification_important),
                title: Text('Alerta $index'),
                subtitle: Text('Descrição do alerta $index'),
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    Routes.alertDetail,
                    arguments: 'Alerta $index',
                  );
                },
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: CustomNavigationBar(),
    );
  }
}
