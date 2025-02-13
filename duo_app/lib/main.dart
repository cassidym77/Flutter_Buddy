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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              ElevatedButton(
                onPressed: () {
                  // Navigate to SecondPage
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SecondPage()),
                  );
                },
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.black),
                ),
                child: const Text("Cass Was Here"),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  // Navigate to SecondPage
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ThirdPage()),
                  );
                },
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.black),
                ),
                child: const Text("Maureen Was Here 🫡"),
              ),
              const SizedBox(height: 30),
              Image.asset(
                "assets/puppy.gif",
                height: 350.0,
                width: 350.0,
              ),
          ],
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
    );
  }
} */

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text('Maureen''s Page')),
      body: Center(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 80,
              color: Colors.black,
              alignment: Alignment.center,
              child: const Text(
                "Maureen's Page",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 50),
            Text(
              'Found what you were looking for?',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(height: 20),
            Image.asset(
              "assets/side_eye.gif",
              height: 300.0,
              width: 300.0,
            ),
            const SizedBox(height: 30),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.black),
                ),
                child: const Text('👋🏽 Say bye to the dog 👋🏽'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}