import 'package:flutter/material.dart';
import 'package:my_whatsapp/res/colors/app_colors.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'MyWhatsApp',
          style: TextStyle(
            color: AppColors.geen,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.camera_alt_outlined),
          ),
          PopupMenuButton(
            itemBuilder: (context) {
              return [
                const PopupMenuItem(
                  value: 1,
                  child: Text('data'),
                ),
              ];
            },
            offset: const Offset(0, 40),
            color: Colors.white,
            elevation: 2,
            onSelected: (value) {},
          )
        ],
      ),
      body: const Center(
        child: Text('Home Page'),
      ),
    );
  }
}
