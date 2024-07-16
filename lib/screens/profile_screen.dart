import 'package:bugrural/models/user.dart';
import 'package:bugrural/widgets/navigation_bar.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final User user = User(
    name: 'José da Silva',
    email: 'admin@bugrural.com.br',
    avatarUrl: 'assets/images/avatar.png',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Expanded(
              child: Text(
                'Perfil de Usuário',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
        backgroundColor: const Color(0xFF688B43),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(
              height: 24.0,
            ),
            const Row(
              children: [Expanded(child: SizedBox())],
            ),
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(user.avatarUrl),
            ),
            const SizedBox(height: 16.0),
            Text(
              user.name,
              style:
                  const TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            Text(
              user.email,
              style: const TextStyle(fontSize: 16.0, color: Colors.grey),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomNavigationBar(),
    );
  }
}
