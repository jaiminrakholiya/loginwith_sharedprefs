import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Sample data for the ListView
    final List<String> items = List.generate(20, (index) => 'Item ${index + 1}');

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              child: Text(items[index][items[index].length - 1]), // Display last character as avatar
            ),
            title: Text(
              items[index],
              style: const TextStyle(fontSize: 18),
            ),
            subtitle: const Text('This is a description.'),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              // Handle tap event
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('${items[index]} clicked!'),
                  duration: const Duration(seconds: 1),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
