import 'package:flutter/material.dart';

void main() {
  runApp(const NailMuseApp());
}

class NailMuseApp extends StatelessWidget {
  const NailMuseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NailMuse Menu',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('NailMuse Menu'),
          centerTitle: true,
          backgroundColor: Colors.pink,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                color: Colors.pink.shade50,
                child: const Column(
                  children: [
                    Text(
                      'Welcome to NailMuse',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.pink,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Choose your preferred nail service',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
              menuCard(
                "Classic Manicure",
                "RM 30",
                Icons.brush,
                "assets/images/classic.jpg",
              ),
              menuCard(
                "Gel Manicure",
                "RM 50",
                Icons.auto_awesome,
                "assets/images/gel.jpg",
              ),
              menuCard(
                "Custom Nail Art",
                "RM 80",
                Icons.palette,
                "assets/images/nailart.jpg",
              ),
              menuCard(
                "Luxury Pedicure",
                "RM 60",
                Icons.spa,
                "assets/images/pedicure.jpg",
              ),
            ],
          ),
        ),
      ),
    );
  }

  static Widget menuCard(
    String title,
    String price,
    IconData icon,
    String image,
  ) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Container(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                image,
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(icon, color: Colors.pink, size: 26),
                  const SizedBox(height: 4),
                  Text(
                    title,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(price, style: const TextStyle(fontSize: 16)),
                  const SizedBox(height: 4),
                  Row(
                    children: List.generate(
                      5,
                      (index) =>
                          const Icon(Icons.star, color: Colors.amber, size: 16),
                    ),
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
