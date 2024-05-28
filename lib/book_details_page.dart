import 'package:flutter/material.dart';

class BookDetailPage extends StatelessWidget {
  final String title;
  final String author;
  final String description;
  final String cover;

  const BookDetailPage({
    required this.title,
    required this.author,
    required this.description,
    required this.cover,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Détails du Livre'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              cover,
              width: MediaQuery.of(context).size.width,
              height: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16),
            Text(
              title,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Auteur: $author',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(
              'Description: $description',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
