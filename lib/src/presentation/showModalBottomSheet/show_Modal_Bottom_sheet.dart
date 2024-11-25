import 'package:figma1abdulaziz/src/presentation/showModalBottomSheet/widjet/buy_container.dart';
import 'package:figma1abdulaziz/src/presentation/showModalBottomSheet/widjet/horizantal_list.dart';
import 'package:figma1abdulaziz/src/presentation/showModalBottomSheet/widjet/terms_text.dart';
import 'package:figma1abdulaziz/src/presentation/showModalBottomSheet/widjet/two_large_texts.dart';
import 'package:flutter/material.dart';

class ShowModalBottomSheet extends StatefulWidget {
  const ShowModalBottomSheet({super.key});

  @override
  State<ShowModalBottomSheet> createState() => _ShowModalBottomSheetState();
}

class _ShowModalBottomSheetState extends State<ShowModalBottomSheet> {
  bool _isVisible = true;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) {
            return Visibility(
              visible: _isVisible,
              child: Container(
                width: 639,
                height: 439,
                color: Color(0xff0D1333),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(width: 160),
                          Container(
                            width: 130,
                            height: 130,
                            color: Color(0xff0D1333),
                            child: Image.asset(
                              "assets/images/_Режим_изоляции.png",
                              color: Color(0xffF2C94C),
                              fit: BoxFit.contain,
                            ),
                          ),
                          SizedBox(width: 156),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                _isVisible = false;
                              });
                            },
                            icon: Icon(
                              Icons.close,
                              size: 33,
                              color: const Color.fromARGB(255, 219, 166, 166),
                            ),
                          ),
                        ],
                      ),
                      TwoLargeTexts(),
                      HorizantalList(),
                      SizedBox(height: 13),
                      BuyContainer(),
                      SizedBox(height: 7),
                      TermsText(),
                      SizedBox(height: 13),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
      child: Image.asset(
        "assets/images/_Режим_изоляции.png",
        color: Color(0xffF2C94C),
      ),
    );
  }
}
