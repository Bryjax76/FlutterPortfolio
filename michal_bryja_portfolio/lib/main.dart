import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/projects_screen.dart';
import 'screens/contact_screen.dart';
import 'screens/about_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedIndex = 0;
  final List<Widget> screens = [
    HomeScreen(),
    ProjectsScreen(),
    ContactScreen(),
    AboutScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightGreenAccent,
        appBar: AppBar(),
        body: screens[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home', backgroundColor: Color.fromRGBO(24, 53, 55, 1)),
            BottomNavigationBarItem(icon: Icon(Icons.work), label: 'Projekty', backgroundColor: Color.fromRGBO(24, 53, 55, 1)),
            BottomNavigationBarItem(icon: Icon(Icons.mail), label: 'Kontakt', backgroundColor: Color.fromRGBO(24, 53, 55, 1)),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'O mnie', backgroundColor: Color.fromRGBO(24, 53, 55, 1)),
          ],
        ),
      ),
    );
  }
}




