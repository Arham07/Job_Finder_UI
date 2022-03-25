import 'package:flutter/material.dart';

class Test3 extends StatelessWidget {
  const Test3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Text(
          "Test Screen\nWe are working on it",
          style: TextStyle(color: Theme.of(context).primaryColor),
        ));
  }
}