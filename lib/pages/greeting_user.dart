import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GreetingUser extends StatefulWidget {
  const GreetingUser({super.key});

  @override
  State<GreetingUser> createState() => _GreetingUserState();
}

class _GreetingUserState extends State<GreetingUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: SizedBox(
        child: Column(
          children: [
            const Text('건강 정보 입력',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 36,
                    fontFamily: 'Retrosans')),
            Row(
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
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: const [
                  SizedBox(
                    width: 100,
                    child: TextField(
                      decoration: InputDecoration(labelText: "키"),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Text("cm")
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: const [
                  SizedBox(
                    width: 100,
                    child: TextField(
                      decoration: InputDecoration(labelText: "몸무게"),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Text("kg")
                ],
              ),
            ),
            ElevatedButton(
                onPressed: () => null,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                ),
                child: const Text("입장"))
          ],
        ),
      ),
    ));
  }
}
