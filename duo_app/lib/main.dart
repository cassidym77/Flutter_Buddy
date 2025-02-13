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

  final String image;

  Doggies(this.name, this.breed, this.image);
}

// Second Page: Cassidy
class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    
    final List<Doggies> dogList = [
    Doggies('Snow', 'Husky', "duo_app/images/husky.png"),
    Doggies('Ace', 'Doberman', "duo_app/images/doberman.png"),
    
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("Cassidy's Page")),
      body: ListView.builder(
        itemCount: dogList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(dogList[index].name),
            subtitle: Text(dogList[index].breed),
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