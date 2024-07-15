import 'package:bugrural/models/property.dart';
import 'package:bugrural/models/user.dart';
import 'package:bugrural/widgets/banner_slider.dart';
import 'package:bugrural/widgets/navigation_bar.dart';
import 'package:bugrural/widgets/property_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final User user = User(
    name: 'Admin',
    email: 'admin@bugrural.com.br',
    avatarUrl: 'assets/images/avatar.png',
  );

  @override
  Widget build(BuildContext context) {
    final List<Property> properties = [
      Property(name: 'Propriedade 1', location: 'Localização 1', backgroundColor: Colors.blue[100]!),
      Property(name: 'Propriedade 2', location: 'Localização 2', backgroundColor: Colors.green[100]!),
      // Adicionar mais propriedades conforme necessário
    ];

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(user.avatarUrl),
            ),
            SizedBox(width: 10),
            Text(user.name),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Buscar...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            SizedBox(height: 20),
            BannerSlider(),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: properties.length,
                itemBuilder: (context, index) {
                  return PropertyCard(property: properties[index]);
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
