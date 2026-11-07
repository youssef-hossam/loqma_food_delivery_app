import 'dart:async';

import 'package:flutter/material.dart';

class PopIn extends StatefulWidget {
  const PopIn({
    super.key,
    required this.child,
    this.delay = Duration.zero,
    this.duration = const Duration(milliseconds: 700),
    this.fromScale = 0.3,
    this.fromOffset = Offset.zero,
  });

  final Widget child;
  final Duration delay;
  final Duration duration;
  final double fromScale;
  final Offset fromOffset;

  @override
  State<PopIn> createState() => _PopInState();
}

class _PopInState extends State<PopIn> with SingleTickerProviderStateMixin {
  late final AnimationController _c = AnimationController(vsync: this, duration: widget.duration);
  late final Animation<double> _scale =
      Tween(begin: widget.fromScale, end: 1.0).animate(CurvedAnimation(parent: _c, curve: Curves.easeOutBack));
  late final Animation<double> _fade = CurvedAnimation(parent: _c, curve: Curves.easeOut);
  late final Animation<Offset> _offset =
      Tween(begin: widget.fromOffset, end: Offset.zero).animate(CurvedAnimation(parent: _c, curve: Curves.easeOutCubic));
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer(widget.delay, () {
      if (mounted) _c.forward();
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _c.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _fade,
      child: AnimatedBuilder(
        animation: _c,
        child: widget.child,
        builder: (context, child) => Transform.translate(
          offset: _offset.value,
          child: Transform.scale(scale: _scale.value, child: child),
        ),
      ),
    );
  }
}

class Floating extends StatefulWidget {
  const Floating({
    super.key,
    required this.child,
    this.distance = 7,
    this.period = const Duration(milliseconds: 2000),
    this.phase = 0,
  });

  final Widget child;
  final double distance;
  final Duration period;

  final double phase;

  @override
  State<Floating> createState() => _FloatingState();
}

class _FloatingState extends State<Floating> with SingleTickerProviderStateMixin {
  late final AnimationController _c = AnimationController(vsync: this, duration: widget.period)
    ..value = widget.phase
    ..repeat(reverse: true);

  @override
  void dispose() {
    _c.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _c,
      child: RepaintBoundary(child: widget.child),
      builder: (context, child) {
        final t = Curves.easeInOut.transform(_c.value);
        return Transform.translate(offset: Offset(0, widget.distance * (1 - 2 * t)), child: child);
      },
    );
  }
}
