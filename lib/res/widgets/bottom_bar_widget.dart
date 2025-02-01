import 'package:flutter/material.dart';

class BottomBarWidget extends StatelessWidget {
  const BottomBarWidget({
    super.key,
    required this.index,
    required this.onTap,
  });

  final int index;
  final Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: index,
      type: BottomNavigationBarType.fixed,
      selectedIconTheme: const IconThemeData(
        color: Colors.green,
      ),
      selectedLabelStyle: const TextStyle(
        fontWeight: FontWeight.bold,
      ),
      onTap: onTap,
      backgroundColor: Colors.white,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.chat),
          label: 'Chats',
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage('assets/icons/updates.png')),
          label: 'Updates',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.groups),
          label: 'Communities',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.call),
          label: 'Calls',
        ),
      ],
    );
  }
}
