import 'package:flutter/material.dart';
import '/theme/app_theme.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final bool outline;

  const RoundedButton({
    super.key,
    required this.text,
    required this.onTap,
    this.outline = false,
  });

  @override
  Widget build(BuildContext context) {
    if (outline) {
      return ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          foregroundColor: AppColors.orange,
          elevation: 0,
          side: const BorderSide(color: Colors.white),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text(text),
      );
    }

    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(colors: AppColors.gradient),
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            color: Color(0x22000000),
            blurRadius: 10,
            offset: Offset(0, 6),
          ),
        ],
      ),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          padding: const EdgeInsets.symmetric(vertical: 14),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text(text, style: const TextStyle(fontWeight: FontWeight.bold)),
      ),
    );
  }
}
