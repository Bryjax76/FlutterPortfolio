import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  Widget sectionCard(String title, Widget child) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            child
          ],
        ),
      ),
    );
  }

  Widget skillChip(String skill) {
    return Padding(
      padding: const EdgeInsets.only(right: 8, bottom: 8),
      child: Chip(
        label: Text(skill),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [

        const SizedBox(height: 30),

        /// Avatar

        const CircleAvatar(
          radius: 50,
          child: Icon(Icons.person, size: 50),
        ),

        const SizedBox(height: 16),

        const Center(
          child: Text(
            "Michał Bryja",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        const SizedBox(height: 6),

        const Center(
          child: Text(
            "Developer • Frontend • Web",
            style: TextStyle(color: Colors.grey),
          ),
        ),

        const SizedBox(height: 30),

        /// ABOUT

        sectionCard(
          "About me",
          const Text(
            "Developer zainteresowany tworzeniem aplikacji webowych, embedded oraz systemów opartych o computer vision. Lubię budować praktyczne projekty – od pluginów i stron WordPress po systemy wykrywania ludzi z użyciem YOLO i Raspberry Pi.",
          ),
        ),

        /// SKILLS

        sectionCard(
          "Skills",
          Wrap(
            children: [
              skillChip("Flutter"),
              skillChip("JavaScript"),
              skillChip("Python"),
              skillChip("WordPress"),
              skillChip("YOLO"),
              skillChip("Embedded"),
              skillChip("IoT"),
            ],
          ),
        ),

        /// INTERESTS

        sectionCard(
          "Interests",
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text("• Embedded / IoT"),
              Text("• Web development"),
              Text("• Game development"),
              Text("• Automation & tools"),
            ],
          ),
        ),

        const SizedBox(height: 40),
      ],
    );
  }
}