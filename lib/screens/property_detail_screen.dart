import 'package:bugrural/models/property.dart';
import 'package:bugrural/utils/routes.dart';
import 'package:bugrural/widgets/navigation_bar.dart';
import 'package:flutter/material.dart';

class PropertyDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Property property =
        ModalRoute.of(context)!.settings.arguments as Property;

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
            height: MediaQuery.of(context).size.height * 0.3,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(property.image),
                  fit: BoxFit.cover,
                ),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(24.0),
                  bottomRight: Radius.circular(24.0),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 180),
                Expanded(
                  child: ListView(
                    children: [
                      Card(
                        color: Colors.white,
                        elevation: 8.0,
                        child: Padding(
                          padding:
                              const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 24.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ListTile(
                                trailing: Container(
                                  decoration: const BoxDecoration(
                                    color: Color(0xFF688B43),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20.0)),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Icon(
                                      Icons.phone,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                title: Text(
                                  property.name,
                                  style: const TextStyle(
                                    color: Color(0xFF688B43),
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                subtitle: Text(property.location),
                                onTap: () {
                                  // Implement call to owner
                                },
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0, vertical: 0.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      property.area,
                                      style: const TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 4.0,
                                    ),
                                    const Text(
                                      'Propriedade de José da Silva',
                                      style: TextStyle(
                                        fontSize: 14.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Painel de controle',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      GridView.count(
                        crossAxisCount: 2,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        children: [
                          _buildManagementCard(
                              context,
                              'Microclima',
                              Routes.microclimate,
                              Icons.cloud,
                              const Color(0xFF688B43),
                              const Color(0xFFE7F0DC),
                              property),
                          _buildManagementCard(
                            context,
                            'Pragas',
                            Routes.pest,
                            Icons.bug_report,
                            property.pestStatus
                                ? const Color(0xFF688B43)
                                : const Color(0xFF703030),
                            property.pestStatus
                                ? const Color(0xFFE7F0DC)
                                : const Color(0xFFF0DCDC),
                            property,
                          ),
                        ],
                      ),
                    ],
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

  Widget _buildManagementCard(BuildContext context, String title, String route,
      IconData icon, Color color, Color background, Property property) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      color: background,
      elevation: 4.0,
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, route, arguments: property);
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 64, color: color),
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
