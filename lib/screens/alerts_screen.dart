import 'package:bugrural/utils/routes.dart';
import 'package:bugrural/widgets/navigation_bar.dart';
import 'package:flutter/material.dart';

class AlertsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF688B43),
        title: const Padding(
          padding: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/avatar.png'),
              ),
              SizedBox(
                width: 16.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Seja bem-vindo!',
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'José da Silva',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: 5, // Replace with actual alert count
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(bottom: 16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 1,
                    blurRadius: 3,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: ListTile(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                leading: CircleAvatar(
                  backgroundColor: index == 0 || index == 3
                      ? const Color(0xFF703030)
                      : const Color(0xFF688B43),
                  child: const Icon(
                    Icons.notification_important,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  'Alerta',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                    color: index == 0 || index == 3
                        ? Color(0xFF703030)
                        : Color(0xFF688B43),
                  ),
                ),
                subtitle: const Text(
                  'Descrição do alerta',
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.black87,
                  ),
                ),
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
