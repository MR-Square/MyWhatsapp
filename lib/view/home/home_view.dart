import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
      body: PageView(
        onPageChanged: _vm.onPageChange,
        children: _vm.pages,
      ),
    );
  }
}
