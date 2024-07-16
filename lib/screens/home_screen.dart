import 'package:bugrural/models/property.dart';
import 'package:bugrural/models/user.dart';
import 'package:bugrural/widgets/banner_slider.dart';
import 'package:bugrural/widgets/navigation_bar.dart';
import 'package:bugrural/widgets/property_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final User user = User(
    name: 'José da Silva',
    email: 'admin@bugrural.com.br',
    avatarUrl: 'assets/images/avatar.png',
  );

  @override
  Widget build(BuildContext context) {
    final List<Property> properties = [
      Property(
          name: 'Fazenda São José',
          location: 'Caruaru - Pernambuco',
          area: '20 hectares',
          backgroundColor: const Color(0xFFE7F0DC),
          icon: const Icon(
            Icons.home_work,
            size: 40,
            color: Color(0xFF688B43),
          ),
          image: 'assets/images/property_image1.png',
          pestStatus: true),
      Property(
          name: 'Canavial Costamar',
          location: 'Recife - Pernambuco',
          area: '150.000 m²',
          backgroundColor: const Color(0xFFF0DCDC),
          icon: const Icon(
            Icons.house,
            size: 40,
            color: Color(0xFF703030),
          ),
          image: 'assets/images/property_image2.png',
          pestStatus: false),
    ];

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
      body: Stack(
        children: [
          // Fundo verde
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: MediaQuery.of(context).size.height * 0.25,
            child: Container(
              color: const Color(0xFF688B43),
            ),
          ),
          // Conteúdo principal
          Padding(
            padding: const EdgeInsets.fromLTRB(24.0, 16.0, 24.0, 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Buscar...',
                    prefixIcon: const Icon(Icons.search),
                    suffixIcon: const Icon(Icons.filter_alt),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF688B43),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(16.0)),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
                const SizedBox(height: 30),
                BannerSlider(),
                const SizedBox(height: 30),
                const Text(
                  'Suas propriedades',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
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
        ],
      ),
      bottomNavigationBar: CustomNavigationBar(),
    );
  }
}
