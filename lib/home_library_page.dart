import 'package:flutter/material.dart';

class LibraryHome extends StatelessWidget {
  const LibraryHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bibliothèque'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/library.jpg'), // Ensure this image is in your assets folder
            SizedBox(height: 16),
            Text(
              'Bienvenue à la Bibliothèque publique',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16),
            Text(
              'Découvrez une large sélection de livres, de magazines et de ressources électroniques. '
                  'Nous offrons également des événements communautaires, des ateliers et des programmes éducatifs pour tous les âges.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
