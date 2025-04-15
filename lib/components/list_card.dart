import 'package:flutter/material.dart';

class ListCard extends StatelessWidget {
  const ListCard({super.key, required this.name, required this.age});

  final String name;
  final int age;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Column(
            children: [Text(name), SizedBox(height: 10), Text(age.toString())],
          ),
          Column(
            children: [
              ElevatedButton(onPressed: () {}, child: Text("Edit")),
              ElevatedButton(onPressed: () {}, child: Text("Delete")),
            ],
          ),
        ],
      ),
    );
  }
}
