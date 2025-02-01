import 'package:flutter/material.dart';
import 'package:my_whatsapp/res/colors/app_colors.dart';
import 'package:my_whatsapp/utils/utils.dart';

class ChatTileWidget extends StatelessWidget {
  const ChatTileWidget({
    super.key,
    required this.name,
    required this.message,
    required this.time,
    this.messageCount,
  });

  final String name;
  final String message;
  final String time;
  final int? messageCount;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      leading: CircleAvatar(
        radius: 30,
        backgroundColor: Colors.grey.withOpacity(0.4),
      ),
      title: Text(
        name,
        style: const TextStyle(
          fontSize: 20,
        ),
      ),
      subtitle: Text(message),
      trailing: Column(
        // mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(time),
          if (messageCount != null && messageCount! > 0) Utils.verticalSpace(1),
          if (messageCount != null && messageCount! > 0)
            CircleAvatar(
              backgroundColor: AppColors.geen,
              radius: 12,
              child: Center(
                child: Text(
                  messageCount.toString(),
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}
