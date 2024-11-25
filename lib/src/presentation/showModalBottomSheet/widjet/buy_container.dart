import 'package:flutter/material.dart';

class BuyContainer extends StatelessWidget {
  const BuyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        width: 410,
        height: 49,
        decoration: BoxDecoration(
            color: Color(0xffAA044A), borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(
            "Купить",
            style: TextStyle(
              color: Color(0xffF6F4F4),
              fontSize: 19,
            ),
          ),
        ),
      ),
    );
  }
}
