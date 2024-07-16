import 'package:flutter/material.dart';

class BannerSlider extends StatelessWidget {
  final List<Map<String, String>> banners = [
    {
      'tag': 'Atualização',
      'title': 'Monitoramento do bicudo-da-cana\nadicionado',
      'image': 'assets/images/banner1.png'
    },
    {
      'tag': 'Notícia',
      'title': 'Equipe BugRural intensifica\natuação no interior',
      'image': 'assets/images/banner2.png'
    },
    {
      'tag': 'Destaque',
      'title': 'BugRural é destaque no financiamento\nde pesquisas',
      'image': 'assets/images/banner3.png'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      child: PageView.builder(
        itemCount: banners.length,
        itemBuilder: (context, index) {
          final banner = banners[index];
          return Padding(
            padding: const EdgeInsets.all(0.0),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: Image.asset(
                    height: 220,
                    banner['image']!,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 16,
                  left: 16,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 4.0),
                    decoration: const BoxDecoration(
                      color: Color(0xFF688B43),
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 0.0),
                      child: Text(
                        banner['tag']!,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 16,
                  left: 16,
                  child: Text(
                    banner['title']!,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
