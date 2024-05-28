import 'package:flutter/material.dart';

import 'book_details_page.dart';

class BooksPage extends StatefulWidget {
  const BooksPage({Key? key}) : super(key: key);

  @override
  _BookListState createState() => _BookListState();
}

class _BookListState extends State<BooksPage> {
  final List<Map<String, String>> books = [
    {
      "title": "Exiles",
      "author": "Jane Harper",
      "cover": "assets/book1.jpg",
      "description":
      "At a busy festival site on a warm spring night, a baby lies alone in her pram, her mother vanishing into the crowds.A year on, Kim Gillespie’s absence casts a long shadow as her friends and loved ones gather deep in the heart of South Australian wine country to welcome a new addition to the family.Joining the celebrations is federal investigator Aaron Falk. But as he soaks up life in the lush valley"
    },
    {
      "title": "Thinking Outside The Box",
      "author": "Bruce Walker",
      "cover": "assets/book2.jpg",
      "description":
      "DISCOVER:: How to ACTIVE Your Creative MindUpdated: 2018 MarchWhat does it mean to be limited to inside the box as opposed to being outside?The key, according to experts on the subject, is to apply creative thinking to your daily life. Perhaps up until this time, you’ve never really thought yourself a creative person"
    },
    {
      "title": "The Big Deal",
      "author": "Hisham Al Gurg",
      "cover": "assets/book3.jpg",
      "description":
      "This book will show you in six easy to follow practical steps on how to never worry about low sales again, ever. I call them the 6 Ps System. I have used the exact same 6 Ps System to train all the sales teams in my 12 companies on how to sell big-ticket products to customers from all around the globe"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Liste des Livres'),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              _showAddBookDialog(context);
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: books.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.asset(
              books[index]['cover']!,
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
            title: Text(
              books[index]['title']!,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(books[index]['author']!),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BookDetailPage(
                    title: books[index]['title']!,
                    author: books[index]['author']!,
                    description: books[index]['description']!,
                    cover: books[index]['cover']!,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }

  void _showAddBookDialog(BuildContext context) {
    String title = '';
    String author = '';
    String description = '';
    String coverUrl = '';

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Ajouter un nouveau livre'),
          content: Form(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextFormField(
                  decoration: InputDecoration(labelText: 'Titre'),
                  onChanged: (value) {
                    title = value;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Auteur'),
                  onChanged: (value) {
                    author = value;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Description'),
                  onChanged: (value) {
                    description = value;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'URL de la couverture'),
                  onChanged: (value) {
                    coverUrl = value;
                  },
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  books.add({
                    "title": title,
                    "author": author,
                    "description": description,
                    "cover": coverUrl,
                  });
                });
                Navigator.of(context).pop();
              },
              child: Text('Ajouter'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Annuler'),
            ),
          ],
        );
      },
    );
  }
}
