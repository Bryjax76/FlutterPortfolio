import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../widgets/project_card.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key});

  void showProjectDialog(
    BuildContext context,
    String title,
    String description,
  ) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: Text(description),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Zamknij"),
          ),
        ],
      ),
    );
  }

  Future<void> openWebsite(String url) async {
    final Uri uri = Uri.parse(url);

    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw Exception('Nie można otworzyć $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ProjectCard(
          title: "Consilio",
          description: "Strona internetowa Wordpress",
          icon: Icons.language,
          type: ProjectType.website,
          onTap: () {
            openWebsite("https://consilioprojekt.pl");
          },
        ),

        ProjectCard(
          title: "Siemaszko",
          description: "Strona internetowa Wordpress",
          icon: Icons.language,
          type: ProjectType.website,
          onTap: () {
            openWebsite("https://siemaszko.pl");
          },
        ),

        ProjectCard(
          title: "Chemland Shop",
          description: "Sklep Magento – chemia techniczna",
          icon: Icons.language,
          type: ProjectType.website,
          onTap: () {
            openWebsite("https://sklep-chemland.pl");
          },
        ),

        ProjectCard(
          title: "Odczynniki Chemiczne",
          description: "WooCommerce – sklep B2C",
          icon: Icons.language,
          type: ProjectType.website,
          onTap: () {
            openWebsite("https://odczynniki-chemiczne.com");
          },
        ),

        ProjectCard(
          title: "Odczynniki Chemiczne B2B",
          description: "WooCommerce – system sprzedaży hurtowej",
          icon: Icons.language,
          type: ProjectType.website,
          onTap: () {
            openWebsite("https://us.odczynniki-chemiczne.com");
          },
        ),

        ProjectCard(
          title: "Ressist",
          description: "Magento – sklep internetowy",
          icon: Icons.language,
          type: ProjectType.website,
          onTap: () {
            openWebsite("https://ressist.pl");
          },
        ),

        ProjectCard(
          title: "POS System",
          description: "System sprzedaży dla sklepów stacjonarnych",
          icon: Icons.point_of_sale,
          type: ProjectType.app,
          onTap: () {
            showProjectDialog(
              context,
              "POS System",
              "Rozwój systemów POS wspierający obsługę sprzedaży w sklepach stacjonarnych.",
            );
          },
        ),

        ProjectCard(
          title: "YOLO Animal Detection",
          description: "Kamera wykrywająca zwierzęta (Raspberry Pi)",
          icon: Icons.camera_alt,
          type: ProjectType.app,
          onTap: () {
            showProjectDialog(
              context,
              "YOLO Animal Detection",
              "Amatorski projekt systemu fotopułapki z Raspberry Pi i YOLO do wykrywania zwierząt i kotów w kadrze.",
            );
          },
        ),

        ProjectCard(
          title: "WP Media Organizer Plugin",
          description: "Plugin WordPress do kategoryzacji plików",
          icon: Icons.folder,
          type: ProjectType.app,
          onTap: () {
            showProjectDialog(
              context,
              "WP Media Organizer",
              "Wtyczka WordPress umożliwiająca klientom łatwiejsze zarządzanie i wyszukiwanie plików multimedialnych.",
            );
          },
        ),

        ProjectCard(
          title: "Data.gov Integration WP",
          description: "Integracja WordPress z dane.gov.pl",
          icon: Icons.dataset,
          type: ProjectType.app,
          onTap: () {
            showProjectDialog(
              context,
              "Data.gov Integration",
              "Wtyczka WordPress integrująca system z publicznymi danymi z dane.gov.pl i automatyczną kategoryzacją informacji.",
            );
          },
        ),
        ProjectCard(
          title: "WP Investment Manager",
          description: "Wtyczka do zarządzania inwestycjami",
          icon: Icons.dataset,
          type: ProjectType.app,
          onTap: () {
            showProjectDialog(
              context,
              "WP Investment Manager",
              "Wykonanie autorskiej wtyczki do łatwej obsługi zarządzania mieszkaniami i dodawania nowych oraz ich przeglądu od strony klienta.",
            );
          },
        ),
        ProjectCard(
          title: "Crawlers",
          description: "Różne crawlery do różnych zadań",
          icon: Icons.bug_report,
          type: ProjectType.app,
          onTap: () {
            showProjectDialog(
              context,
              "Crawlers",
              "Na drodze kariery często musiałem wygrzebać masę danych ze stron które nie posiadały baz danych lub nie było możliwości eksportu. Tutaj przydawał mi się bardzo crawler i 'ręczne' wygrzebanie danych bezpośrednio ze strony.",
            );
          },
        ),
      ],
    );
  }
}
