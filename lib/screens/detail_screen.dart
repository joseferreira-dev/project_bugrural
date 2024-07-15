import 'package:bugrural/widgets/navigation_bar.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String detailTitle = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: Text(detailTitle),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Card(
              child: ListTile(
                leading: Icon(Icons.info),
                title: Text('Informações detalhadas sobre $detailTitle'),
                subtitle: Text('Descrição completa sobre $detailTitle'),
              ),
            ),
            SizedBox(height: 20),
            Image.asset('assets/images/detected_pest.jpg'),
          ],
        ),
      ),
      bottomNavigationBar: CustomNavigationBar(),
    );
  }
}
