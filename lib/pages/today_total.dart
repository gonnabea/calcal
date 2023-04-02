import 'package:calcal/widgets/list_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TodayTotal extends StatelessWidget {
  const TodayTotal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.only(top: 40),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const FaIcon(FontAwesomeIcons.person, size: 80),
              Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: const [
                    Text("1,000 kcal",
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w600)),
                    Text("1,000 kcal",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w300)),
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(children: const [
                  ListCard(
                    title: "떡볶이",
                    imgUrl: 'assets/sample.png',
                    kcalNum: 300,
                  ),
                  ListCard(
                    title: "떡볶이",
                    imgUrl: 'assets/sample.png',
                    kcalNum: 300,
                  ),
                  ListCard(
                    title: "떡볶이",
                    imgUrl: 'assets/sample.png',
                    kcalNum: 300,
                  ),
                  ListCard(
                    title: "떡볶이",
                    imgUrl: 'assets/sample.png',
                    kcalNum: 300,
                  ),
                ]),
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(children: const [
                  ListCard(
                    title: "떡볶이",
                    imgUrl: 'assets/sample.png',
                    kcalNum: 300,
                  ),
                  ListCard(
                    title: "떡볶이",
                    imgUrl: 'assets/sample.png',
                    kcalNum: 300,
                  ),
                  ListCard(
                    title: "떡볶이",
                    imgUrl: 'assets/sample.png',
                    kcalNum: 300,
                  ),
                  ListCard(
                    title: "떡볶이",
                    imgUrl: 'assets/sample.png',
                    kcalNum: 300,
                  ),
                ]),
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(children: const [
                  ListCard(
                    title: "떡볶이",
                    imgUrl: 'assets/sample.png',
                    kcalNum: 300,
                  ),
                  ListCard(
                    title: "떡볶이",
                    imgUrl: 'assets/sample.png',
                    kcalNum: 300,
                  ),
                  ListCard(
                    title: "떡볶이",
                    imgUrl: 'assets/sample.png',
                    kcalNum: 300,
                  ),
                  ListCard(
                    title: "떡볶이",
                    imgUrl: 'assets/sample.png',
                    kcalNum: 300,
                  ),
                ]),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
