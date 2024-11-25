// import 'package:figma1abdulaziz/src/presentation/chat_screen/widjet/top_header_container.dart';
import 'package:figma1abdulaziz/src/presentation/two_views/widjet/reklamalar.dart';
import 'package:flutter/material.dart';

class XabarYozadiganBet extends StatefulWidget {
  const XabarYozadiganBet({
    super.key,
    required this.image,
  });

  final String image;

  @override
  State<XabarYozadiganBet> createState() => _XabarYozadiganBetState();
}

class _XabarYozadiganBetState extends State<XabarYozadiganBet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 180,
              color: Color(0xffD9D9D9),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 95, left: 53),
                child: Row(
                  children: [
                    Image.asset(
                      widget.image,
                      width: 60,
                      height: 60,
                    ),
                  ],
                ),
              ),
            ),
            Reklamalar(),
            Container(
              height: 555,
              color: const Color(0xff212020),
              width: double.infinity,
              child: Column(
                children: [
                  const SizedBox(height: 46),
                  const Text(
                    "Начни общение",
                    style: TextStyle(
                      color: Color(0xff8D8D8D),
                      fontSize: 20,
                      letterSpacing: 1,
                    ),
                  ),
                  SizedBox(height: 425),
                  Container(
                    width: 498,
                    height: 40,
                    decoration: BoxDecoration(
                      color: const Color(0xff212020),
                      border: Border.all(
                        color: const Color(0xff8D8D8D),
                        width: 2,
                      ),
                    ),
                    child: TextField(
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.add,
                          color: Color(0xff8D8D8D),
                        ),
                        label: Text(
                          "Сообщение...",
                        ),
                        hintStyle: const TextStyle(
                          color: Color(0xff8D8D8D),
                        ),
                        suffixIcon: Row(
                          mainAxisSize: MainAxisSize
                              .min, // Elementlarni bir-biriga yaqin qilish
                          children: [
                            Image.asset(
                              "/images/png-transparent-computer-icons-male-avatar-user-leprechaun-hat-heroes-hat-logo-thumbnail.png",
                              width: 30,
                              height: 30,
                            ),
                            const SizedBox(width: 8),
                            const Icon(
                              Icons.mic_none_outlined,
                              color: Color(0xff8D8D8D),
                              size: 25,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
