import 'package:flutter/cupertino.dart';

class ListCard extends StatelessWidget {
  final String title;
  final String imgUrl;
  final double kcalNum;

  const ListCard(
      {super.key,
      required this.title,
      required this.imgUrl,
      required this.kcalNum});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 100,
      child: Row(children: [
        Image.asset(
          imgUrl,
          width: 80,
          height: 80,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
            Text("$kcalNum kcal",
                style: const TextStyle(
                  fontWeight: FontWeight.w300,
                )),
          ],
        ),
      ]),
    );
  }
}
