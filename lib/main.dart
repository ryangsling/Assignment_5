import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI CALCULATOR',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.teal,
              ),
              child: Text(
                'Welcome!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjGVSWgmIoH-cRI0rG8wvQXGz_RqPuh8RgqA&s',
                width: 300,
                height: 300,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Health Tips (ListView)',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  Card(
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text('Eat healthy'),
                    ),
                  ),
                  Card(
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text('Exercise daily'),
                    ),
                  ),
                  Card(
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text('Drink water'),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Workout Options (GridView)',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 200,
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.all(10),
                children: const [
                  Card(
                    color: Colors.tealAccent,
                    child: Center(child: Text('Yoga')),
                  ),
                  Card(
                    color: Colors.tealAccent,
                    child: Center(child: Text('Running')),
                  ),
                  Card(
                    color: Colors.tealAccent,
                    child: Center(child: Text('Cycling')),
                  ),
                  Card(
                    color: Colors.tealAccent,
                    child: Center(child: Text('Gym')),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
