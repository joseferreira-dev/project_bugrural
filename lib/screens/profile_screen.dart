import 'package:bugrural/models/user.dart';
import 'package:bugrural/widgets/navigation_bar.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final User user = User(
    name: 'Admin',
    email: 'admin@bugrural.com.br',
    avatarUrl: 'assets/images/avatar.jpg',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(user.avatarUrl),
            ),
            SizedBox(height: 16.0),
            Text(
              user.name,
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            Text(
              user.email,
              style: TextStyle(fontSize: 16.0, color: Colors.grey),
            ),
            // Add more profile details and actions here
          ],
        ),
      ),
      bottomNavigationBar: CustomNavigationBar(),
    );
  }
}
