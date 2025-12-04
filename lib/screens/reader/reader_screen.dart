import 'package:flutter/material.dart';

class ReaderScreen extends StatelessWidget {
  const ReaderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: const Text("Chapter 1"),
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (_, index) {
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 8),
            height: 350,
            color: Colors.grey.shade800,
            child: const Icon(Icons.image, color: Colors.white, size: 50),
          );
        },
      ),
    );
  }
}
