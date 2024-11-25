import 'package:figma1abdulaziz/src/presentation/showModalBottomSheet/listlar/list.dart';
import 'package:flutter/material.dart';

class HorizantalList extends StatelessWidget {
  const HorizantalList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: rasmnisoni.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(
              left: 43,
              top: 22,
            ),
            child: Stack(
              children: [
                Container(
                  width: 110,
                  height: 190,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 21, 20, 20),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      width: 2.3,
                      color: Color(0xff393737),
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 7),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(height: 56),
                          Text(
                            rasmnisoni[index],
                            style: TextStyle(
                              color: Color(0xffF6F4F4),
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(width: 13),
                          Image.asset(
                            "assets/images/_Режим_изоляции.png",
                            color: Color(0xffF2C94C),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                if (rasmnisoni[index] == "3" || rasmnisoni[index] == "7")
                  Positioned(
                    left: 30,
                    // Ko'tarish uchun topni sozlash
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(110),
                      child: Image.asset(
                        rasm[index % rasm.length],
                        width: 50,
                        height: 20,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 35,
                    top: 55,
                  ),
                  child: Text(
                    narxi[index],
                    style: TextStyle(
                      color: Color(0xffF6F4F4),
                      fontSize: 19,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
