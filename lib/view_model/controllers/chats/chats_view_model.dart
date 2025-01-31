import 'package:get/get.dart';
import 'package:my_whatsapp/models/common/popup_menu_item_model.dart';

class ChatsViewModel extends GetxController {
  // ================= LISTS ===================

  /// This list is for [PopupMenuItems] of chat screen.
  final List<PopupMenuItemModel> chatsMenuList = const [
    PopupMenuItemModel(label: 'New group', value: 1),
    PopupMenuItemModel(label: 'New broadcast', value: 2),
    PopupMenuItemModel(label: 'Linked devices', value: 3),
    PopupMenuItemModel(label: 'Starred messages', value: 4),
    PopupMenuItemModel(label: 'Payments', value: 5),
    PopupMenuItemModel(label: 'Settings', value: 6),
  ];
}