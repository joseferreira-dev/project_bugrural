import 'package:flutter/material.dart';
import '../models/user.dart';
import '../widgets/user_header.dart';
import '../widgets/navigation_bar.dart';

class PestDetailsScreen extends StatelessWidget {
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
              title: Text('TRAP-02'),
              subtitle: Text('Armadilha Tipo X21'),
              trailing: Icon(Icons.info),
              onTap: () {}, // Add popup functionality
            ),
          ),
          Image.asset('assets/images/pest_image.png'),
          Text('Cigarrinha-das-raízes'),
        ],
      ),
      bottomNavigationBar: NavigationBarCustom(currentIndex: 0, onTap: (index) {}),
    );
  }
}
