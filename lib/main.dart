import 'package:chat_app/features/login/views/screens/login_screen.dart';
import 'package:chat_app/features/login/views/screens/register_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ScolorChat());
}

class ScolorChat extends StatelessWidget {
  const ScolorChat({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        LoginScreen.id :(context)=> const LoginScreen(),
        RegisterScreen.id :(context)=> const RegisterScreen(),
      },
      initialRoute: LoginScreen.id,
      home: const RegisterScreen(),
    )
      
    
  
    
    ;
  }
}