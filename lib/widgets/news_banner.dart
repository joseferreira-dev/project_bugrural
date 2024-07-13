import 'package:flutter/material.dart';

class NewsBanner extends StatelessWidget {
  final String tag;
  final String title;
  final String imageUrl;

  NewsBanner({required this.tag, required this.title, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16.0),
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(tag, style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          Image.network(imageUrl, fit: BoxFit.cover),
        ],
      ),
    );
  }
}
