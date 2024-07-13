import 'package:bugrural/widgets/custom_card.dart';
import 'package:flutter/material.dart';
import '../models/user.dart';
import '../widgets/user_header.dart';
import '../widgets/navigation_bar.dart';
import 'microclimate_screen.dart';
import 'pest_screen.dart';

class PropertyDetailsScreen extends StatelessWidget {
  final User user = User(name: 'José da Silva', email: 'admin@bugrural.com.br', avatarUrl: 'https://example.com/avatar.png');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          UserHeader(user: user),
          Image.asset('assets/images/property_image.png'),
          Card(
            child: ListTile(
              title: Text('Canavial Costamar'),
              subtitle: Text('Recife - Pernambuco\nPropriedade de José da Silva'),
              trailing: IconButton(
                icon: Icon(Icons.phone),
                onPressed: () {},  // Add phone call functionality
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomCard(
                title: 'Microclima',
                subtitle: '',
                icon: Icons.cloud,
                color: Colors.greenAccent,
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => MicroclimateScreen())),
              ),
              CustomCard(
                title: 'Pragas',
                subtitle: '',
                icon: Icons.bug_report,
                color: Colors.redAccent,
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => PestScreen())),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: NavigationBarCustom(currentIndex: 0, onTap: (index) {}),
    );
  }
}
