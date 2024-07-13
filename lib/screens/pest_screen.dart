import 'package:bugrural/widgets/custom_card.dart';
import 'package:flutter/material.dart';
import '../models/user.dart';
import '../widgets/user_header.dart';
import '../widgets/navigation_bar.dart';
import 'pest_details_screen.dart';

class PestScreen extends StatelessWidget {
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
          // Add list of traps here
          CustomCard(
            title: 'TRAP-01',
            subtitle: 'Armadilha Tipo X21',
            icon: Icons.bug_report,
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => PestDetailsScreen())), color: Colors.red,
          ),
        ],
      ),
      bottomNavigationBar: NavigationBarCustom(currentIndex: 0, onTap: (index) {}),
    );
  }
}
