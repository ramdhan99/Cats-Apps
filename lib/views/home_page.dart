import 'package:flutter/material.dart';
import 'package:pemrograman_mobile/controller/cats_api.dart';
import 'package:pemrograman_mobile/models/cats.dart';
import 'package:pemrograman_mobile/views/detail_cats_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        title: const Text(
          "Home Page",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: FutureBuilder(
          future: CatsApi.getCats(),
          builder: (_, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else {
              if (snapshot.hasData) {
                return Container(
                  margin: const EdgeInsets.all(10),
                    child: ListView(
                      children: List.generate(snapshot.data.length, (i) {
                        Cat cat = snapshot.data[i];
                        return InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (_)=> DetailCatPage(cat)));
                          },
                          child: Card(
                            elevation: 4,
                            child: Column(
                              children: [
                                ListTile(
                                  title: Text("${cat.name}"),
                                  subtitle: Text("Asal: ${cat.origin}"),
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 200,
                                  child: Image.network(cat.imageLink!, fit: BoxFit.cover
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                    )
                );
              } else {
                return Center(
                  child: Text("Tidak ada data : ${snapshot.data}"),
                );
              }
            }
          }),
    );
  }
}
