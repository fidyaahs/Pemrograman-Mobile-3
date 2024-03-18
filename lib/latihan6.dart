import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Top 5 Hobi Artis"),
        ),
        body: MyHomePage(), 
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {

  final List<Map<String, String>> dataList = [
    {"name": "Taylor Swift", "hobby": "Bernyanyi", "image": "https://coolwallpapers.me/picsup/6064273-singer-taylor-swift-taylor-swift-blonde-girl.jpg"},
    {"name": "Puti Renatta Ratnasari Moeloek", "hobby": "Memasak", "image": "https://media.suara.com/pictures/653x366/2021/08/05/56679-chef-renatta.jpg"},
    {"name": "Jennie", "hobby": "Menari", "image": "https://3.bp.blogspot.com/-6LsPHtgDxmc/XsyjAZEsFPI/AAAAAAAAZBw/OPqhpZj2FdgktiwJsJ7L5i5EDfklvsgxACLcBGAsYHQ/w914-h514-p-k-no-nu/jennie-blackpink-calvin-klein-photoshoot-uhdpaper.com-4K-6.1703-wp.thumbnail.jpg"},
    {"name": "Maudy Ayunda", "hobby": "Membaca Buku", "image": "https://media.suara.com/pictures/970x544/2020/07/04/61671-maudy-ayunda.jpg"},
    {"name": "Luna Maya", "hobby": "Bersepeda", "image": "https://static.republika.co.id/uploads/images/inpicture_slide/037642400-1637223674-618082b3f1a16-luna-mayajpg.jpg"},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dataList.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            onTap: () {},
            leading: Image.network(
              dataList[index]["image"]!,
            ),
            trailing: const Icon(Icons.more_vert),
            title: Text(dataList[index]["name"]!),
            subtitle: Text(dataList[index]["hobby"]!),
            tileColor: Color.fromARGB(179, 255, 232, 252),
          ),
        );
      },
    );
  }
}