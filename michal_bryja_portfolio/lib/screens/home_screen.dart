import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.person, size: 80),
            SizedBox(height: 20),
            Text(
              "Cześć, jestem Michał",
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 10),
            Text("Tworzę strony i aplikacje"),
          ],
        ),
      ),
    );
  }
}
