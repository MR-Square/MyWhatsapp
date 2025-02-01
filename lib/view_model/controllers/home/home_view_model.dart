import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_whatsapp/view/chats/chats_view.dart';

class HomeViewModel extends GetxController {
  // ================= CONTROLLERS =====================
  final pageController = PageController();
  // ================= RX VALUES =====================
  RxInt currentIndex = 0.obs;

  // ================= LISTS =====================

  final List<Widget> pages = const [
    ChatsView(),
    Center(child: Text('second page')),
    Center(child: Text('third page')),
    Center(child: Text('third page')),
  ];

  // ================= METHODS =====================

  /// Method to change page:
  void onPageChange(int index) {
    currentIndex.value = index;
    pageController.jumpToPage(index);
  }
}
