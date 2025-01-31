import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeViewModel extends GetxController {
  // ================= RX VALUES =====================
  RxInt currentIndex = 0.obs;

  // ================= LISTS =====================

  final List<Widget> pages = const [
    Center(child: Text('first page')),
    Center(child: Text('second page')),
    Center(child: Text('third page')),
  ];

  // ================= METHODS =====================

  /// Method to change page:
  void onPageChange(int index) {
    currentIndex.value = index;
  }
}
