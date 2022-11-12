import 'package:flutter/material.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({Key? key}) : super(key: key);
  static String routerScreen = '/message';
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments ?? 'no data';
    return Scaffold(
      body: Center(
        child: Text('$args'),
      ),
    );
  }
}
