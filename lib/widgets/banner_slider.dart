import 'package:flutter/material.dart';

class BannerSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: PageView(
        children: [
          _buildBanner(context, 'Tag 1', 'Title 1', 'assets/images/banner1.png'),
          _buildBanner(context, 'Tag 2', 'Title 2', 'assets/images/banner2.png'),
          _buildBanner(context, 'Tag 3', 'Title 3', 'assets/images/banner3.png'),
        ],
      ),
    );
  }

  Widget _buildBanner(BuildContext context, String tag, String title, String imageUrl) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imageUrl),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 16.0,
            left: 16.0,
            child: Chip(
              label: Text(tag),
            ),
          ),
          Positioned(
            bottom: 16.0,
            left: 16.0,
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
