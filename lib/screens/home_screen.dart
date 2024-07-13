import 'package:flutter/material.dart';
import '../models/user.dart';
import '../widgets/user_header.dart';
import '../widgets/custom_card.dart';
import '../widgets/navigation_bar.dart';
import '../widgets/news_banner.dart';
import 'property_details_screen.dart';

class HomeScreen extends StatelessWidget {
  final User user = User(name: 'José da Silva', email: 'admin@bugrural.com.br', avatarUrl: 'https://example.com/avatar.png');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UserHeader(user: user),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Buscar propriedade',
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.filter_list),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: NewsBanner(
                tag: 'Novidade',
                title: 'Monitoramento do bicudo-da-cana adicionado',
                imageUrl: 'assets/images/news_image.png',
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Text('Suas propriedades', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),
            CustomCard(
              title: 'Fazenda São José',
              subtitle: 'Caruaru - Pernambuco',
              icon: Icons.home,
              color: Colors.lightGreenAccent,
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => PropertyDetailsScreen())),
            ),
            CustomCard(
              title: 'Canavial Costamar',
              subtitle: 'Recife - Pernambuco',
              icon: Icons.home,
              color: Colors.pinkAccent,
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => PropertyDetailsScreen())),
            ),
          ],
        ),
      ),
      bottomNavigationBar: NavigationBarCustom(currentIndex: 0, onTap: (index) {}),
    );
  }
}
