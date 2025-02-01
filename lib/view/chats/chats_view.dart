import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_whatsapp/res/colors/app_colors.dart';
import 'package:my_whatsapp/res/widgets/chat_tile/chat_tile_widget.dart';
import 'package:my_whatsapp/res/widgets/popup_menu_widget.dart';
import 'package:my_whatsapp/view_model/controllers/chats/chats_view_model.dart';

class ChatsView extends StatefulWidget {
  const ChatsView({super.key});

  @override
  State<ChatsView> createState() => _ChatsViewState();
}

class _ChatsViewState extends State<ChatsView> {
  final _vm = Get.put(ChatsViewModel());
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
            menuList: _vm.chatsMenuList,
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return const ChatTileWidget(
            name: 'Contact Person Name',
            message: 'This is a old message',
            time: '01-02-2025',
          );
        },
      ),
    );
  }
}

