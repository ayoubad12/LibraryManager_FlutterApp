import 'package:flutter/material.dart';

class AdherentDetailsPage extends StatelessWidget {
  final String name;
  final String email;
  final String phone;
  final String image;

  const AdherentDetailsPage({
    Key? key,
    required this.name,
    required this.email,
    required this.phone,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Détails de l\'adhérent'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(image),
            ),
            SizedBox(height: 16),
            Text(
              'Nom: $name',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Email: $email',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              'Téléphone: $phone',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

