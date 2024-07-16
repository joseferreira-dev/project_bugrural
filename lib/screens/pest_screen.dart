import 'package:bugrural/models/property.dart';
import 'package:bugrural/utils/routes.dart';
import 'package:bugrural/widgets/navigation_bar.dart';
import 'package:flutter/material.dart';

class PestScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Property property =
        ModalRoute.of(context)!.settings.arguments as Property;

    final List traps = property.pestStatus == false
        ? [
            'ok',
            'detected',
            'ok',
            'inactive',
            'ok',
            'ok',
            'ok',
            'ok',
          ]
        : [
            'ok',
            'ok',
            'ok',
            'ok',
            'ok',
            'ok',
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
                    color: property.pestStatus
                        ? const Color(0xFFE7F0DC)
                        : const Color(0xFFF0DCDC),
                    elevation: 8.0,
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            property.pestStatus
                                ? Icons.verified
                                : Icons.warning,
                            color: property.pestStatus
                                ? const Color(0xFF688B43)
                                : const Color(0xFF703030),
                            size: 64,
                          ),
                          const SizedBox(height: 8.0),
                          Text(
                            property.pestStatus
                                ? 'Livre de pragas'
                                : 'Alerta de Pragas',
                            style: TextStyle(
                              color: property.pestStatus
                                  ? const Color(0xFF688B43)
                                  : const Color(0xFF703030),
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
                  'Lista de armadilhas',
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
                        itemCount: traps.length,
                        itemBuilder: (context, index) {
                          return _buildPestCard(
                              context, 'TRAP-0${index + 1}', traps[index]);
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

  Widget _buildPestCard(BuildContext context, String title, String trapStatus) {
    return Card(
      elevation: 4.0,
      color: trapStatus == 'detected'
          ? const Color(0xFFF0DCDC)
          : trapStatus == 'inactive'
              ? const Color(0xFFDBDBDB)
              : const Color(0xFFE7F0DC),
      child: InkWell(
        onTap: () {
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
                    trapStatus == 'detected' ? Icons.warning : Icons.verified,
                    size: 64,
                    color: trapStatus == 'detected'
                        ? const Color(0xFF703030)
                        : trapStatus == 'inactive'
                            ? const Color(0xFF6A6A6A)
                            : const Color(0xFF688B43),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    title,
                    style: TextStyle(
                      color: trapStatus == 'detected'
                          ? const Color(0xFF703030)
                          : trapStatus == 'inactive'
                              ? const Color(0xFF6A6A6A)
                              : const Color(0xFF688B43),
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
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
