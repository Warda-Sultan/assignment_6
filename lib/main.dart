import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Best Urdu Novels',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Interest> interests = [
    Interest('Karakoram ka Taj Mahal', Colors.red),
    Interest('Yaram', Colors.orange),
    Interest('Peer e Kamil', Colors.yellow),
    Interest('Dasht e Wehshat', Colors.green),
    Interest('Mann Chaly Ka Sauda', Colors.blue),
    Interest('Azazeel', Colors.indigo),
    Interest('Alif', Colors.purple),
    Interest('Namal', Colors.brown),
    Interest('Jannat Kay Pattay', Colors.grey),
    Interest('Mala', Colors.black),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Best Urdu Novels'),
      ),
      body: GridView.builder(
        itemCount: interests.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          return GridTile(
            child: Card(
              color: interests[index].color,
              child: Center(
                child: Text(
                  interests[index].name,
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class Interest {
  final String name;
  final Color color;

  Interest(this.name, this.color);
}