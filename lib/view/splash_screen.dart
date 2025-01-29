import 'package:flutter/material.dart';
import 'package:my_whatsapp/view_model/services/splash_services.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key}) {
    SplashServices().timer();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Welcome Back!'),
      ),
    );
  }
}
