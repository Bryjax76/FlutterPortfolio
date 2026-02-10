import 'package:flutter/material.dart';
import '../widgets/build_avatar.dart';

class HomeScreen extends StatelessWidget {
  final Function(int) onNavigate;
  
  const HomeScreen({super.key, required this.onNavigate});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.fromLTRB(50, 150, 50, 150),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              buildAvatar(),
              SizedBox(height: 20),
              Text("Cześć, jestem Michał", style: TextStyle(fontSize: 24)),
              SizedBox(height: 10),
              Text("Tworzę strony i aplikacje", style: TextStyle(fontSize: 20)),
              SizedBox(height: 40),
              Text(
                "A to jest aplikacja która przedstawia moje prace i osiągnięcia",
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 20),
              Text(
                "A tak naprawdę ćwiczę w tej aplikacji fluttera. Mam nadzieję, że wszystko zrobione tutaj jest zgodnie z praktyką 😊",
                style: TextStyle(fontSize: 14),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 120),
              ElevatedButton(
                onPressed: () => onNavigate(1),
                child: Text("Zobacz moje projekty"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
