import 'package:bugrural/utils/routes.dart';
import 'package:bugrural/widgets/navigation_bar.dart';
import 'package:flutter/material.dart';

class MicroclimateScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Microclima'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Card(
              child: ListTile(
                leading: Icon(Icons.warning),
                title: Text('Alerta de Microclima'),
                subtitle: Text('Detalhes do alerta de microclima.'),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 5, // Replace with actual data count
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      leading: Icon(Icons.thermostat),
                      title: Text('Dado $index'),
                      subtitle: Text('Informações do dado $index'),
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          Routes.detail,
                          arguments: 'Dado $index',
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomNavigationBar(),
    );
  }
}
