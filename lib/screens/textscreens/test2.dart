import 'package:flutter/material.dart';

class Test2 extends StatelessWidget {
  const Test2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Text(
          "Test Screen\nWe are working on it",
          style: TextStyle(color: Theme.of(context).primaryColor),
        ));
  }
}