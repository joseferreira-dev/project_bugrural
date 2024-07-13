import 'package:flutter/material.dart';
import '../models/user.dart';
import '../widgets/user_header.dart';
import '../widgets/navigation_bar.dart';

class MicroclimateScreen extends StatelessWidget {
  final User user = User(name: 'José da Silva', email: 'admin@bugrural.com.br', avatarUrl: 'https://example.com/avatar.png');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          UserHeader(user: user),
          Card(
            child: ListTile(
              title: Text('Monitoramento de Pragas'),
              subtitle: Text('Praga detectada'),
            ),
          ),
          // Add list of monitoring data here
        ],
      ),
      bottomNavigationBar: NavigationBarCustom(currentIndex: 0, onTap: (index) {}),
    );
  }
}
