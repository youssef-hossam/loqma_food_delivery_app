
import 'package:flutter/material.dart';

class Ring extends StatelessWidget {
  const Ring({super.key, required this.size});

  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white.withValues(alpha: 0.05),
        border: Border.all(color: Colors.white.withValues(alpha: 0.18), width: 1.5),
      ),
    );
  }
}
