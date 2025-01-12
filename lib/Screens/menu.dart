import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Liste des chemins des images
    final List<String> imagePaths = [
      "images/ai.jpg",
      "images/cyber.jpg",
    ];

    // Liste des titres associés aux images
    final List<String> titles = [
      "AI",
      "CyberSecurity",
    ];

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      bottomNavigationBar: NavigationBar(
        destinations:[
          NavigationDestination(icon: Icon(Icons.home), label:'Home'),
          NavigationDestination(icon: Icon(Icons.book), label:'Courses'),
          NavigationDestination(icon: Icon(Icons.person), label:'Profile'),
        ]
        ),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,

        title: Row(
          children: [
            Image.asset(
              "images/quicksync.png",
              scale: 5,
            ),
            const SizedBox(
              width: 5,
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // 2 colonnes
            crossAxisSpacing: 10, // Espacement horizontal
            mainAxisSpacing: 10, // Espacement vertical
            childAspectRatio: 8 / 14, // Ratio des enfants
          ),
          itemCount: imagePaths.length, // Nombre d'éléments = taille de la liste
          itemBuilder: (context, int i) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(255, 207, 205, 205),
                    blurRadius: 5,
                    offset: const Offset(3, 3),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Image associée à cet index
                  Image.asset(
                    imagePaths[i],
                    fit: BoxFit.cover,
                    height: 120, // Ajustez la hauteur de l'image
                  ),
                  const SizedBox(height: 30),
                  // Texte sous l'image
                  Text(
                    titles[i], // Titre correspondant
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 52, 142, 53),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}