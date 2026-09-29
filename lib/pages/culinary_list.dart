import 'package:flutter/material.dart';
import '../models/food.dart';
import 'culinary_detail_page.dart';


class Culinarypage extends StatelessWidget {
  final String nama;

  const Culinarypage({super.key, required this.nama});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Culinary Page',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
        itemCount: culinaryList.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      CulinaryDetailPage(food: culinaryList[index]),
                ),
              );
            },
            child: ListTile(
            title: Text(culinaryList[index].name),
            subtitle: Text(
              '${culinaryList[index].category} | ${culinaryList[index].origin}',
            ),
            leading: Image.network(
              culinaryList[index].imageUrl,
              width: 50,
              height: 50,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) =>
                  const Icon(Icons.book),
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.black54,
            ),
          ));
        },
      ),
    );
  }
}
