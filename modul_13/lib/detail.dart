import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  static const String routeName = '/detail';

  final String title;
  const DetailPage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: const TextStyle(color: Colors.blue, fontSize: 24.0),
              ),
              const SizedBox(
                height: 8.0,
              ),
              const Text('Mobile App With Flutter')
            ],
          ),
        ),
      ),
    );
  }
}
