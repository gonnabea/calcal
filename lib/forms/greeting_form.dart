import 'package:flutter/material.dart';

class GreetingForm extends StatefulWidget {
  const GreetingForm({super.key});

  @override
  State<GreetingForm> createState() => _GreetingFormState();
}

class _GreetingFormState extends State<GreetingForm> {
  final _formKey = GlobalKey<FormState>();

  double _height = 0;
  double _weight = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _formKey,
        body: Form(
            child: Column(
          children: [
            TextFormField(
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
            TextFormField(
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
            )
          ],
        )));
  }
}
