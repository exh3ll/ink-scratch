import 'package:flutter/material.dart';
import '../reader/reader_screen.dart';

class BookPage extends StatelessWidget {
  const BookPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Manga Title")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              height: 200,
              width: 140,
              color: Colors.grey.shade300,
              child: const Icon(Icons.image, size: 60),
            ),
            const SizedBox(height: 20),
            const Text(
              "Manga Title",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),

            Expanded(
              child: ListView.builder(
                itemCount: 15,
                itemBuilder: (_, index) => ListTile(
                  title: Text("Chapter ${index + 1}"),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const ReaderScreen()),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
