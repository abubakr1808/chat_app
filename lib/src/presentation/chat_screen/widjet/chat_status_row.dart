import 'package:figma1abdulaziz/src/presentation/showModalBottomSheet/show_Modal_Bottom_sheet.dart';
import 'package:flutter/material.dart';

class chatstatusrow extends StatefulWidget {
  const chatstatusrow({super.key});

  @override
  State<chatstatusrow> createState() => _chatstatusrowState();
}

class _chatstatusrowState extends State<chatstatusrow> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 19),
        Text(
          "Чаты",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
        SizedBox(width: 299),
        Text(
          "OFF",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
        SizedBox(width: 15),
        Container(
          width: 55,
          height: 31,
          decoration: BoxDecoration(
            color: Color(0xff4F4F4F),
            borderRadius: BorderRadiusDirectional.circular(24),
          ),
          child: ShowModalBottomSheet(),
        ),
      ],
    );
  }
}
