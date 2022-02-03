import 'package:flutter/material.dart';
import 'package:vivian_routing_example/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Route Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: routes, // <---- This is where we can create advanced routes
      home: const MyHomePage(title: 'Route Example'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static const _buttonTextSize = 12.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          direction: Axis.vertical,
          runSpacing: 20.0,
          children: <Widget>[
            TextButton(
              onPressed: () => Navigator.pushNamed(
                context,
                '/user/1',
              ),
              child: const Text(
                "User ID 1",
                style: TextStyle(fontSize: _buttonTextSize),
              ),
            ),
            TextButton(
              onPressed: () => Navigator.pushNamed(
                context,
                '/user/2',
              ),
              child: const Text(
                "User ID 2",
                style: TextStyle(fontSize: _buttonTextSize),
              ),
            ),
            TextButton(
              onPressed: () => Navigator.pushNamed(
                context,
                '????',
              ),
              child: const Text(
                "404/Unknown Route",
                style: TextStyle(fontSize: _buttonTextSize),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
