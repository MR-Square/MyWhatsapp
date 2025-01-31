import 'package:flutter/material.dart';
import 'package:my_whatsapp/models/common/popup_menu_item_model.dart';

class PopupMenuWidget extends StatelessWidget {
  const PopupMenuWidget({
    super.key,
    required this.menuList,
  });

  final List<PopupMenuItemModel> menuList;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
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
    );
  }
}