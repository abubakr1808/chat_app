import 'package:flutter/material.dart';

class Reklamalar extends StatefulWidget {
  Reklamalar({super.key});

  @override
  State<Reklamalar> createState() => _ReklamalarState();
}

class _ReklamalarState extends State<Reklamalar> {
  bool _isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: _isVisible,
      child: Container(
        width: double.infinity,
        height: 54,
        color: Color(0xff7446AC),
        child: Row(
          children: [
            SizedBox(width: 15),
            Image.asset(
              "/images/samalyotsurati.png",
              width: 39,
              height: 39,
            ),
            SizedBox(width: 10),
            Text(
              "2 общих соблазна",
              style: TextStyle(
                color: Color(0xffF6F4F4),
                fontSize: 25,
              ),
            ),
            SizedBox(width: 191),
            InkWell(
              onTap: () {
                setState(() {
                  _isVisible = false;
                });
              },
              child: Icon(
                Icons.close,
                color: Colors.white,
                size: 34,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
