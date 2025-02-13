import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Duo Buddy',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightGreen),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Duo Buddy'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate to SecondPage
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SecondPage()),
            );
          },
          child: const Text("Cass Was Here"),
        ),
      ),
    );
  }
}

class Doggies {
  final String name;
  final String breed;

  Doggies(this.name, this.breed);
}

// Second Page: Cassidy
class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    
    final List<Doggies> dog_list = [
    Doggies('Snow', 'Husky'),
    Doggies('Ace', 'Doberman'),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("Cassidy's Page")),
      body: ListView.builder(
        itemCount: dog_list.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(dog_list[index].name),
            subtitle: Text(dog_list[index].breed),
            trailing: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Test'),
            ),
          );
        },
      ),
    );
  }
}

/*
body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Test'),
        ),
      ),
 */