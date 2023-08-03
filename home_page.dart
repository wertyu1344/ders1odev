import 'package:flutter/material.dart';

//Expanded
//Listview
//ListTile

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  List<String> list = [
    'Ahmet',
    'Mehmet',
    'Ayşe',
    'Fatma',
    'Ali',
    'Hasan',
    'Hüseyin',
    'Emine',
    'Zeynep',
    'Mustafa',
    'Serkan',
    'Aslı',
    'Burak',
    'Ebru',
    'Cem',
    'Deniz',
    'Esra',
    'Ferhat',
    'Gizem',
    'Hatice',
  ];
//Expanded
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("İlk Uygulamam"),
        backgroundColor: Colors.teal,
      ),
      body: SafeArea(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return myWidget(list[index], index);
          },
        ),
      ),
    );
  }

  Widget myWidget(String title, int index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 50,
        color: index % 2 == 0 ? Colors.black : Colors.teal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const SizedBox(width: 10),
                const Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 24,
                ),
                const SizedBox(width: 20),
                Text(
                  title,
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.green,
                  child: Text(index.toString()),
                ),
                SizedBox(width: 10),
              ],
            )
          ],
        ),
      ),
    );
  }
}

//ListView
