import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'about_page.dart';
import 'adherents_page.dart';
import 'books_page.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Home",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.white70,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/me.jpg"),
                    radius: 40,
                  ),
                  SizedBox(height: 8),
                  Text(
                    "ayoub adil",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 3),
                  Text(
                    "Bibliothèque publique",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text(
                "Accueil",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
              },
              leading: Icon(Icons.home),
            ),
            ListTile(
              title: Text(
                "Livres",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>BooksPage())); //pour afficher un nouveau page
              },
              leading: Icon(Icons.book),
            ),
            ListTile(
              title: Text(
                "Adhérents",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>AdherentsPage()));
              },
              leading: Icon(CupertinoIcons.person),
            ),
            ListTile(
              title: Text(
                "À propos",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>AboutPage()));
              },
              leading: Icon(Icons.info),
            ),
          ],
        ),
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
