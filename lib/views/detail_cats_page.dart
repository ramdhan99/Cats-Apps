import 'package:flutter/material.dart';
import 'package:pemrograman_mobile/models/cats.dart';

class DetailCatPage extends StatelessWidget {
  final Cat cat;
  const DetailCatPage(this.cat,{super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: const Text("Detail Cat", style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: Column(
        children: [
          SizedBox(
              height: 400,
              width: double.infinity,
              child: Image.network(cat.imageLink!, fit: BoxFit.cover,)),
          ListTile(
            title: const Text("Nama:"),
            subtitle: Text(cat.name!, style: const TextStyle(fontSize: 34, fontWeight: FontWeight.bold),),
            trailing: Text(cat.origin!),
          ),
          Card(
            child: Row(
              children: [
                Expanded(
                  child: ListTile(
                    title: const Text("Tinggi:"),
                    subtitle: Text(cat.length!, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                  ),
                ),Expanded(
                  child: ListTile(
                    title: const Text("Berat:"),
                    subtitle: Text("${cat.maxWeight!}", style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                  ),
                ),
              ],
            ),
          ), Card(
            child: ListTile(
              title: const Text("Tingkat Kejinakan:"),
              subtitle: Row(children: List.generate(cat.familyFriendly!, (index) => const Icon(Icons.star, color: Colors.orange,)),)
            ),
          ),
        ],
      ),
    );
  }
}
