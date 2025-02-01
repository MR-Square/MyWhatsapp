import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_whatsapp/res/widgets/bottom_bar_widget.dart';
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
        controller: _vm.pageController,
        onPageChanged: _vm.onPageChange,
        children: _vm.pages,
      ),
      bottomNavigationBar: Obx(
        () => BottomBarWidget(
          index: _vm.currentIndex.value,
          onTap: _vm.onPageChange,
        ),
      ),
    );
  }
}
