import 'package:flutter/material.dart';
import 'home_screen.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void _login(BuildContext context) {
    if (emailController.text == 'admin@bugrural.com.br' && passwordController.text == 'admin123') {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    } else {
      // Show error message
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo.png'),  // Add your logo image to assets
            Text('Bem-vindo!'),
            TextField(controller: emailController, decoration: InputDecoration(labelText: 'Email')),
            TextField(controller: passwordController, decoration: InputDecoration(labelText: 'Senha'), obscureText: true),
            TextButton(onPressed: () {}, child: Text('Esqueceu sua senha?')),
            ElevatedButton(onPressed: () => _login(context), child: Text('Entrar')),
            TextButton(onPressed: () {}, child: Text('Não tem uma conta? Cadastrar')),
          ],
        ),
      ),
    );
  }
}
