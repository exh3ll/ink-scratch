import 'package:flutter/material.dart';

class MangaCard extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const MangaCard({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            height: 130,
            width: 110,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.shade300,
            ),
          ),
          const SizedBox(height: 8),
          Text(title, maxLines: 2, textAlign: TextAlign.center),
        ],
      ),
    );
  }
}
