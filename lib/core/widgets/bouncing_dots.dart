import 'dart:math';

import 'package:flutter/material.dart';

class BouncingDots extends StatefulWidget {
  const BouncingDots({super.key, required this.color, this.size = 8});

  final Color color;
  final double size;

  @override
  State<BouncingDots> createState() => _BouncingDotsState();
}

class _BouncingDotsState extends State<BouncingDots>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 900),
  )..repeat();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  // كل نقطة بتبدأ متأخرة شوية عن اللي قبلها عشان يبان إنها موجة
  double _dotOffset(int index) {
    final t = (_controller.value - index * 0.2) % 1.0;
    if (t > 0.5) return 0; // نص الوقت التاني النقطة واقفة تحت
    return -sin(t * 2 * pi) * widget.size;
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Row(
          mainAxisSize: MainAxisSize.min,
          children: List.generate(3, (index) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: widget.size / 3),
              child: Transform.translate(
                offset: Offset(0, _dotOffset(index)),
                child: Container(
                  width: widget.size,
                  height: widget.size,
                  decoration: BoxDecoration(
                    color: widget.color,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            );
          }),
        );
      },
    );
  }
}
