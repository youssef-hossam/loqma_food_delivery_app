import 'dart:math' as math;
import 'dart:ui' show PathMetric;
import 'package:flutter/material.dart';
import 'package:loqma_food_delivery_app/core/extensions/context_extensions.dart';
import 'package:loqma_food_delivery_app/core/theme/app_colors.dart';
import 'package:loqma_food_delivery_app/core/theme/app_shadows.dart';
import 'package:loqma_food_delivery_app/core/widgets/app_icon.dart';
import 'package:loqma_food_delivery_app/core/widgets/app_animations.dart';
import 'package:loqma_food_delivery_app/features/onboarding/presentation/widgets/onboarding_parts.dart';


class TrackIllustration extends StatelessWidget {
  const TrackIllustration({super.key});

  @override
  Widget build(BuildContext context) {
    return IllustrationCanvas(
      children: [
        const Positioned(
          left: 24,
          top: 50,
          child: PopIn(fromScale: 0.92, fromOffset: Offset(0, 30), child: _MiniMap()),
        ),
        Positioned(
          left: 200,
          top: 28,
          child: PopIn(
            delay: const Duration(milliseconds: 400),
            fromScale: 0.8,
            fromOffset: const Offset(0, -12),
            child: FloatingChip(
              leading: Container(
                width: 8,
                height: 8,
                decoration: BoxDecoration(color: context.loqma.success, shape: BoxShape.circle),
              ),
              label: context.s.onboardingArrivingIn(12),
            ),
          ),
        ),
      ],
    );
  }
}

class _MiniMap extends StatefulWidget {
  const _MiniMap();

  @override
  State<_MiniMap> createState() => _MiniMapState();
}

class _MiniMapState extends State<_MiniMap> with SingleTickerProviderStateMixin {
  static const _size = Size(342, 340);
  static final Path _route = Path()
    ..moveTo(62, 80)
    ..cubicTo(110, 210, 210, 170, 282, 282);
  static final PathMetric _metric = _route.computeMetrics().first;

  late final AnimationController _ride =
      AnimationController(vsync: this, duration: const Duration(seconds: 4))..repeat(reverse: true);

  @override
  void dispose() {
    _ride.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: _size.width,
      height: _size.height,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(28), boxShadow: AppShadows.card),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(28),
        child: Stack(
          children: [
            Positioned.fill(child: ColoredBox(color: context.loqma.mapLand)),
            Positioned(left: 20, top: 40, child: _block(90, 70, context.loqma.mapPark)),
            Positioned(left: 230, top: 230, child: _block(120, 90, context.loqma.mapWater)),
            Positioned(
              left: -40,
              top: 200,
              child: Transform.rotate(angle: -0.22, child: _block(430, 40, context.loqma.mapRoad)),
            ),
            Positioned(
              left: 170,
              top: -40,
              child: Transform.rotate(angle: 0.14, child: _block(40, 430, context.loqma.mapRoad)),
            ),
            Positioned.fill(child: CustomPaint(painter: _RoutePainter(path: _route, color: context.loqma.primary))),
            Positioned(
              left: 40,
              top: 58,
              child: Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(color: context.loqma.night, borderRadius: BorderRadius.circular(14)),
                alignment: Alignment.center,
                child: const AppIcon('store', size: 20, color: Colors.white),
              ),
            ),
            Positioned(left: 262, top: 258, child: AppIcon('pin', size: 40, color: context.loqma.textPrimary)),
            Positioned.fill(
              child: AnimatedBuilder(
                animation: _ride,
                child: Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(color: context.loqma.primary, shape: BoxShape.circle, boxShadow: AppShadows.primaryGlow),
                  alignment: Alignment.center,
                  child: const AppIcon('bike', size: 22, color: Colors.white),
                ),
                builder: (context, rider) {
                  final t = 0.15 + 0.7 * Curves.easeInOut.transform(_ride.value);
                  final p = _metric.getTangentForOffset(_metric.length * t)!.position;
                  return Stack(children: [Positioned(left: p.dx - 24, top: p.dy - 24, child: rider!)]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _block(double w, double h, Color color) => Container(
        width: w,
        height: h,
        decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(math.min(w, h) / 2.5)),
      );
}

class _RoutePainter extends CustomPainter {
  _RoutePainter({required this.path, required this.color});

  final Path path;
  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = 4
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;
    for (final m in path.computeMetrics()) {
      for (double d = 0; d < m.length; d += 16) {
        canvas.drawPath(m.extractPath(d, math.min(d + 9, m.length)), paint);
      }
    }
  }

  @override
  bool shouldRepaint(covariant _RoutePainter old) => old.color != color;
}
