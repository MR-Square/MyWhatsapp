import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_whatsapp/res/colors/app_colors.dart';
import 'package:my_whatsapp/res/widgets/popup_menu_widget.dart';
import 'package:my_whatsapp/view_model/controllers/home/home_view_model.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final _vm = Get.put(HomeViewModel());
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
          PopupMenuWidget(
            menuList: _vm.homeMenuList,
          ),
        ],
      ),
      body: const Center(
        child: Text('Home Page'),
      ),
    );
  }
}
