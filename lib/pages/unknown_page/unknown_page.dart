import 'package:flutter/material.dart';

class UnknownPage extends StatelessWidget {
  const UnknownPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: const Text("404 - Unknown Route"),
      ),
      body: const Center(
        child: Text(
          "404 - Unknown Route",
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}
