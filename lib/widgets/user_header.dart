import 'package:flutter/material.dart';
import '../models/user.dart';

class UserHeader extends StatelessWidget {
  final User user;

  UserHeader({required this.user});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          CircleAvatar(backgroundImage: NetworkImage(user.avatarUrl)),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Seja bem-vindo!', style: TextStyle(color: Colors.grey)),
              Text(user.name, style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
          Spacer(),
          Icon(Icons.notifications),
        ],
      ),
    );
  }
}
