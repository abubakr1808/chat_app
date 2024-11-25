// import 'package:figma1abdulaziz/src/presentation/chat_screen/List/List.dart';
import 'package:figma1abdulaziz/src/presentation/chat_screen/widjet/chat_item_row.dart';
import 'package:figma1abdulaziz/src/presentation/chat_screen/widjet/chat_status_row.dart';
import 'package:figma1abdulaziz/src/presentation/chat_screen/widjet/like_info_row.dart';
import 'package:figma1abdulaziz/src/presentation/chat_screen/widjet/top_header_container.dart';
import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopHeaderContainer(),
            Container(
              width: double.infinity,
              height: 567,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(13),
                  topRight: Radius.circular(13),
                ),
                color: Color(0xff212020),
              ),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  chatstatusrow(),
                  SizedBox(height: 10),
                  LikeInfoRow(),
                  ChatItemRow(),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 52,
        color: Color(0xff191818),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.home_outlined,
              size: 34,
              color: Colors.red,
            ),
            Icon(
              Icons.child_care_outlined,
              size: 34,
              color: Colors.white70,
            ),
            Icon(
              Icons.favorite_border,
              size: 34,
              color: Colors.red,
            ),
            Icon(
              Icons.settings,
              size: 34,
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
