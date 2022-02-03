import 'package:flutter/material.dart';
import 'package:vivian_routing_example/pages/user_page/components/body.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key? key, required this.id}) : super(key: key);

  final String id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: Text(id),
      ),
      body: Body(id: id),
    );
  }
}
