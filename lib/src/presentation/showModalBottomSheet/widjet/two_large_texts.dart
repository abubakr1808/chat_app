import 'package:flutter/material.dart';

class TwoLargeTexts extends StatelessWidget {
  const TwoLargeTexts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment
          .start, // Agar siz matnni chapga joylashtirmoqchi bo'lsangiz
      children: [
        Text(
          "Режим инкогнито на 24 часа",
          style: TextStyle(
            color: Color(0xffF6F4F4),
            fontSize: 25,
            fontWeight: FontWeight.w400,
            letterSpacing: 2,
          ),
        ),
        SizedBox(height: 24), // Bo'sh joy qo'shish
        Padding(
          padding: const EdgeInsets.only(right: 42),
          child: Text(
            "Стань невидимкой в ленте и чатах, скрой \nобъявление и наслаждайся <Space> незамеченным",
            style: TextStyle(
              color: Color(0xffBCB3B3),
              fontSize: 16,
              letterSpacing: 1,
            ),
          ),
        ),
      ],
    );
  }
}
