import 'package:flutter/material.dart';
import 'package:kuis/pages/culinary_list.dart';
import '../models/food.dart';

void favorite;
class CulinaryDetailPage extends StatelessWidget {
  final Culinary food;

  const CulinaryDetailPage({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(food.name),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              Image.network(
              food.imageUrl,
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) =>
                  const Icon(Icons.book),
            ),
                  Text(
                    food.name,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Nama: ${food.name}',
                    style: const TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Kategori ${food.category}',
                    style: const TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Asal: ${food.origin}',
                    style: const TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Deskripso: ${food.description}',
                    style: const TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Ingredient: ${food.mainIngredient} halaman',
                    style: const TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Rasa: ${food.flavor}',
                    style: const TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Level Kepedasan: ${food.spicyLevel} halaman',
                    style: const TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Waktu Disajikan: ${food.servingTime}',
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Detail:',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    food.wikipediaUrl,
                    style: const TextStyle(fontSize: 16),
                  ),
                  IconButton(
                  icon: Icon(
                        Icons.favorite_border,
                  ),
                  onPressed:

                  (
                    
                  ) {
                  },
                ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
