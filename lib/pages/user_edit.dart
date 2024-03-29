import 'package:calcal/pages/main_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UserEdit extends StatefulWidget {
  const UserEdit({super.key});

  @override
  State<UserEdit> createState() => _UserEditState();
}

class _UserEditState extends State<UserEdit> {
  double _height = 0;
  double _weight = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text('건강 정보 변경',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 28,
                    fontFamily: 'Retrosans')),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: FaIcon(FontAwesomeIcons.person, size: 80),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: FaIcon(FontAwesomeIcons.personDress, size: 80),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 100,
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.always,
                      onSaved: (value) {
                        setState(() {
                          _height = value as double;
                        });
                      },
                      decoration: const InputDecoration(labelText: "키"),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return '수치를 입력하세요..';
                        }
                        return null;
                      },
                    ),
                  ),
                  const Text("cm")
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 100,
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.always,
                      onSaved: (value) {
                        setState(() {
                          _weight = value as double;
                        });
                      },
                      decoration: const InputDecoration(labelText: "몸무게"),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return '수치를 입력하세요..';
                        }

                        return null;
                      },
                    ),
                  ),
                  const Text("kg")
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 20),
                  child: ElevatedButton(
                      onPressed: () => {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const MainPage()))
                          },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey,
                          minimumSize: const Size(100, 50)),
                      child: const Text("취소")),
                ),
                ElevatedButton(
                    onPressed: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MainPage()))
                        },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        minimumSize: const Size(100, 50)),
                    child: const Text("저장")),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
