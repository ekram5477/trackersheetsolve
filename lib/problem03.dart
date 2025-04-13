import 'package:flutter/material.dart';

class Problem03 extends StatelessWidget {
  const Problem03({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        title: const Center(child: Text('Problem 03')),
      ),
      body: ListView.builder(
        itemCount: 20, 
        itemBuilder: (context, index) {
          return buildListItem(index + 1);
        },
      ),
    );
  }

  Widget buildListItem(int index) {
    return Container(
      width: double.infinity,
      color: index.isOdd ? Colors.transparent : const Color.fromARGB(255, 0, 150, 254),
      padding: const EdgeInsets.all(20),
      child: Text(
        'List Item $index',
        style: TextStyle(
          fontFamily: 'WinkyRough-Regular',
          fontSize: 18,
          color: index.isOdd ? Colors.black : Colors.white, 
          fontWeight: index.isOdd ? FontWeight.normal : FontWeight.bold,
        ),
      ),
    );
  }
}