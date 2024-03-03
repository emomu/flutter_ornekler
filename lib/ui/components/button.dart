import 'package:birinci_proje_sayac/ui/pages/countpages.dart';
import 'package:flutter/material.dart';

class CountButton extends StatelessWidget {
  String buttonText;
  CountButton({super.key, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 45,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(22.5)),
          border: Border.all(width: 3.0, color: Colors.white)),
      child: Text(
        "$buttonText",
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white, fontSize: 25),
      ),
    );
  }
}
