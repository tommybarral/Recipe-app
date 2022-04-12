import 'package:flutter/material.dart';

class ContentScreen extends StatelessWidget {
  const ContentScreen({Key? key}) : super(key: key);

  static const routeName = '/content-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Success'),),
    );
  }
}
