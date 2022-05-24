import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  final data = [1, 2, 3, 4, 5];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Judul Halaman'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            data.add(1);
          });
        },
        child: Icon(Icons.add),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8),
        child: ListView.builder(
          itemCount: data.length,
          itemBuilder: ((context, index) {
            return Card(
              child: ListTile(title: Text('${data[index]}')),
            );
          }),
        ),
      ),
    );
  }
}