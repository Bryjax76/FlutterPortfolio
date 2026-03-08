import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  Future<void> openLink(String url) async {
    final Uri uri = Uri.parse(url);

    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw Exception('Nie można otworzyć $url');
    }
  }

  Widget contactTile({
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon, size: 36),
              const SizedBox(height: 10),
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                subtitle,
                style: const TextStyle(color: Colors.grey),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [

        const SizedBox(height: 30),

        const CircleAvatar(
          radius: 50,
          child: Icon(Icons.person, size: 50),
        ),

        const SizedBox(height: 16),

        const Center(
          child: Text(
            "Bryjax",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        const SizedBox(height: 6),

        const Center(
          child: Text(
            "Developer",
            style: TextStyle(color: Colors.grey),
          ),
        ),

        const SizedBox(height: 30),

        /// RZĄD 1

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Expanded(
                child: contactTile(
                  icon: Icons.work,
                  title: "LinkedIn",
                  subtitle: "Michał Bryja",
                  onTap: () {
                    openLink("https://linkedin.com/in/twojprofil");
                  },
                ),
              ),

              const SizedBox(width: 12),

              Expanded(
                child: contactTile(
                  icon: Icons.code,
                  title: "GitHub",
                  subtitle: "bryjax76",
                  onTap: () {
                    openLink("https://github.com/bryjax76");
                  },
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 12),

        /// RZĄD 2 (wyśrodkowany)

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60),
          child: contactTile(
            icon: Icons.email,
            title: "Email",
            subtitle: "michalBryja@protonmail.com",
            onTap: () {
              openLink("mailto:michalBryja@protonmail.com");
            },
          ),
        ),

        const SizedBox(height: 40),
      ],
    );
  }
}