import 'package:bugrural/models/property.dart';
import 'package:bugrural/utils/routes.dart';
import 'package:bugrural/widgets/navigation_bar.dart';
import 'package:flutter/material.dart';

class MicroclimateScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Property property =
        ModalRoute.of(context)!.settings.arguments as Property;

    final List<Map<String, dynamic>> climateData = [
      {'title': 'Temperatura', 'value': '28°C', 'icon': Icons.thermostat},
      {'title': 'Umidade', 'value': '65%', 'icon': Icons.opacity},
      {'title': 'Precipitação', 'value': '10mm', 'icon': Icons.grain},
      {'title': 'Vel. do Vento', 'value': '15km/h', 'icon': Icons.air},
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
            height: MediaQuery.of(context).size.height * 0.125,
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xFF688B43),
                borderRadius: BorderRadius.only(
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
                SizedBox(
                  width: double.infinity,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24.0)),
                    color: const Color(0xFFE7F0DC),
                    elevation: 8.0,
                    child: const Padding(
                      padding: EdgeInsets.all(24.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.cloud,
                            color: Color(0xFF688B43),
                            size: 64,
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            'Condições Climáticas',
                            style: TextStyle(
                              color: Color(0xFF688B43),
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Dados Climáticos',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10.0),
                Expanded(
                  child: ListView(
                    children: [
                      GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                        ),
                        itemCount: climateData.length,
                        itemBuilder: (context, index) {
                          return _buildClimateCard(
                              context,
                              climateData[index]['title'],
                              climateData[index]['value'],
                              climateData[index]['icon']);
                        },
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

  Widget _buildClimateCard(
      BuildContext context, String title, String value, IconData icon) {
    return Card(
      elevation: 4.0,
      color: const Color(0xFFE7F0DC),
      child: InkWell(
        onTap: () {
          // Implement navigation to detail screen if needed
          Navigator.pushNamed(context, Routes.detail, arguments: title);
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    icon,
                    size: 64,
                    color: const Color(0xFF688B43),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    title,
                    style: const TextStyle(
                      color: Color(0xFF688B43),
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    value,
                    style: const TextStyle(
                      color: Colors.black54,
                      fontSize: 14.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
