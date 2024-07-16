import 'package:bugrural/utils/routes.dart';
import 'package:flutter/material.dart';

class CustomNavigationBar extends StatefulWidget {
  @override
  _CustomNavigationBarState createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  int _currentIndex = 0;

  final List<String> _routes = [
    Routes.home,
    Routes.alerts,
    Routes.profile,
  ];

  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
    Navigator.pushNamedAndRemoveUntil(
        context, _routes[index], (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: const Color(0xFF688B43), // Fundo verde
      selectedItemColor: Colors.white, // Ícone da página atual branco
      unselectedItemColor: const Color(
          0xFF406230), // Ícones não selecionados em verde mais escuro
      currentIndex: _currentIndex,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: 'Alertas',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Perfil',
        ),
      ],
      onTap: _onTap,
    );
  }
}
