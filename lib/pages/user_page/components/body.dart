import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key, required this.id}) : super(key: key);

  final String id;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Your are looking at user with id: $id",
        style: const TextStyle(fontSize: 24.0),
      ),
    );
  }
}
