import 'package:flutter/material.dart';

class LikeInfoRow extends StatelessWidget {
  const LikeInfoRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 19),
        Container(
          width: 54,
          height: 54,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xff1F093A),
          ),
          child: Icon(
            Icons.favorite,
            color: Color(0xff7446AC),
            size: 29.9,
          ),
        ),
        SizedBox(width: 12),
        Text(
          "44 человека тебя лайкнули                   .",
          style: TextStyle(
            color: Color(0XFFF6F4F4),
            fontSize: 23,
          ),
        ),
      ],
    );
  }
}
