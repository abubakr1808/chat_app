import 'package:figma1abdulaziz/src/presentation/chat_screen/List/List.dart';
import 'package:figma1abdulaziz/src/presentation/two_views/xabaryozadiganbet.dart';
import 'package:flutter/material.dart';

class ChatItemRow extends StatelessWidget {
  const ChatItemRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 449,
      child: ListView.builder(
        itemCount: Songgikirishvaqtilar.length,
        itemBuilder: (context, index) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 7),
              Padding(
                padding: const EdgeInsets.all(9.0),
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    shape: BoxShape.circle,
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              XabarYozadiganBet(image: odamlasurati[index]),
                        ),
                      );
                    },
                    child: Image.asset(
                      odamlasurati[index],
                    ),
                  ),
                ),
              ),
              SizedBox(width: 6),
              Column(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: Songgikirishvaqtilar[index] + "\n",
                          style: TextStyle(
                            color: Color(0xffF6F4F4),
                          ),
                        ),
                        WidgetSpan(
                          child: SizedBox(height: 22),
                        ),
                        TextSpan(
                          text: Sungihabarlar[index],
                          style: TextStyle(
                            color: Color(0xffF6F4F4),
                            letterSpacing: 1.3,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
