import 'package:birinci_proje_sayac/ui/components/button.dart';
import 'package:flutter/material.dart';

class CountPages extends StatefulWidget {
  CountPages({super.key});

  @override
  State<CountPages> createState() => CountPagesState();
}

class CountPagesState extends State<CountPages> {
  int sayac = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                  border: Border.all(width: 5.0, color: Colors.white)),
              width: 250,
              height: 75,
              child: Text(
                "Sayaç > ${sayac}",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      sayac++;
                    });
                  },
                  child: CountButton(buttonText: "Arttır"),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      sayac--;
                    });
                  },
                  child: CountButton(buttonText: "Azalt"),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      sayac = 0;
                    });
                  },
                  child: CountButton(
                    buttonText: "Sıfırla",
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
    ;
  }
}
