import 'package:flutter/material.dart';

import 'adherents_details_page.dart';

class AdherentsPage extends StatefulWidget {
  const AdherentsPage({Key? key}) : super(key: key);

  @override
  _AdherentsPageState createState() => _AdherentsPageState();
}

class _AdherentsPageState extends State<AdherentsPage> {
  final List<Map<String, String>> adherents = [
    {
      "name": "John Doe",
      "email": "john.doe@example.com",
      "phone": "123456789",
      "image": "https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1568341619l/53146365.jpg",
    },
    {
      "name": "Jane Smith",
      "email": "jane.smith@example.com",
      "phone": "987654321",
      "image": "https://via.placeholder.com/150",
    },
    // Add more members as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Liste des Adhérents'),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              _showAddAdherentDialog(context);
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: adherents.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(adherents[index]['image']!),
            ),
            title: Text(adherents[index]['name']!),
            subtitle: Text(adherents[index]['email']!),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AdherentDetailsPage(
                    name: adherents[index]['name']!,
                    email: adherents[index]['email']!,
                    phone: adherents[index]['phone']!,
                    image: adherents[index]['image']!,
                  ),
                ),
              );
            },
          );

        },
      ),
    );
  }

  void _showAddAdherentDialog(BuildContext context) {
    String name = '';
    String email = '';
    String phone = '';

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Ajouter un nouvel adhérent'),
          content: Form(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextFormField(
                  decoration: InputDecoration(labelText: 'Nom'),
                  onChanged: (value) {
                    name = value;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Email'),
                  onChanged: (value) {
                    email = value;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Téléphone'),
                  onChanged: (value) {
                    phone = value;
                  },
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  adherents.add({
                    "name": name,
                    "email": email,
                    "phone": phone,
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
