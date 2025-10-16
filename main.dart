import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Removes debug banner
      theme: ThemeData(
        primarySwatch: Colors.deepPurple, // Correct Material color for AppBar
        textTheme: const TextTheme(
          bodyMedium: TextStyle(fontSize: 18, fontFamily: 'Arial'),
          titleLarge: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('LAYOUT PRACTICE')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // 1️⃣ Column & Row
              const Text('Column & Row Example:', style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Icon(Icons.home, size: 40, color: Colors.blue),
                      Icon(Icons.star, size: 40, color: Colors.orange),
                      Icon(Icons.person, size: 40, color: Colors.green),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Text('This Is A Column With A Row Inside'),
                ],
              ),
              const Divider(height: 40),

              // 2️⃣ Container & Padding
              const Text('Container & Padding Example:', style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.amberAccent,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Text(
                  'Hello Container!',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              const Divider(height: 40),

              // 3️⃣ Stack Example
              const Text('Stack Example:', style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              SizedBox(
                height: 150,
                child: Stack(
                  children: [
                    Container(width: double.infinity, color: Colors.blue[100]),
                    Positioned(
                      top: 20,
                      left: 20,
                      child: Container(width: 50, height: 50, color: Colors.red),
                    ),
                    Positioned(
                      bottom: 20,
                      right: 20,
                      child: Container(width: 50, height: 50, color: Colors.green),
                    ),
                  ],
                ),
              ),
              const Divider(height: 40),

              // 4️⃣ Responsive Layout
              const Text('Responsive Layout Example:', style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              LayoutBuilder(
                builder: (context, constraints) {
                  if (constraints.maxWidth < 600) {
                    return Container(
                      padding: const EdgeInsets.all(20),
                      color: Colors.orange[100],
                      child: const Text('Mobile Layout', textAlign: TextAlign.center),
                    );
                  } else {
                    return Container(
                      padding: const EdgeInsets.all(20),
                      color: Colors.green[100],
                      child: const Text('Tablet/Desktop Layout', textAlign: TextAlign.center),
                    );
                  }
                },
              ),
              const Divider(height: 40),

              // 5️⃣ Custom Widget Example
              const Text('Custom Widget Example:', style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              Center(child: CustomButton(title: 'Click Me')),
            ],
          ),
        ),
      ),
    );
  }
}

// 🔹 Reusable Custom Widget
class CustomButton extends StatelessWidget {
  final String title;
  const CustomButton({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.deepPurple, // Matches primarySwatch
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(title, style: const TextStyle(color: Colors.white, fontSize: 18)),
    );
  }
}
