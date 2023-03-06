import 'package:calcal/widgets/list_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          children: [
            const FaIcon(FontAwesomeIcons.person, size: 80),
            Column(
              children: const [
                Text("1,000 kcal",
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.w600)),
                Text("1,000 kcal",
                    style:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.w300)),
              ],
            ),
          ],
        ),
        SizedBox(
          width: 300,
          child: TextFormField(
            autovalidateMode: AutovalidateMode.always,
            onSaved: (value) {},
            decoration: const InputDecoration(labelText: "음식 검색"),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return '음식 이름을 입력하세요!';
              }

              return null;
            },
          ),
        ),
        SingleChildScrollView(
          child: Container(
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
          ])),
        )
      ],
    ));
  }
}
