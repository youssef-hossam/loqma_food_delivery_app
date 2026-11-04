import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:loqma_food_delivery_app/core/router/routes.dart';
import 'package:loqma_food_delivery_app/core/theme/app_colors.dart';
import 'package:loqma_food_delivery_app/core/widgets/loqma_logo.dart';
import 'package:loqma_food_delivery_app/features/onboarding/domain/onboarding_repository.dart';
import 'package:loqma_food_delivery_app/features/splash/presentation/widgets/ring.dart';

/// Second (Flutter) splash — same motion as the Figma prototype:
/// hold the native frame briefly, then ONE 900 ms ease-out-back move where
/// everything animates together (like Figma's Smart Animate), then continue.
///
/// Smoothness rules used here:
/// - Nothing is rebuilt per frame: each animated piece is built once and passed
///   as `child`; only cheap transforms / opacity layers change.
/// - The SVGs are drawn once at a fixed size and only scaled (no relayout,
///   no colour filter recomputed every frame).
/// - Fades use FadeTransition (an opacity layer) instead of Opacity widgets.
class SplashPage extends StatefulWidget {
  const SplashPage({super.key, required this.onboardingRepository});

  final OnboardingRepository onboardingRepository;

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with SingleTickerProviderStateMixin {
  late final AnimationController _c =
      AnimationController(vsync: this, duration: const Duration(milliseconds: 900));
  late final Animation<double> _move = CurvedAnimation(parent: _c, curve: Curves.easeOutBack);
  late final Animation<double> _fade = CurvedAnimation(parent: _c, curve: Curves.easeOut);

  // Sizes from the Figma frames "00 · Splash" → "00 · Splash · Logo".
  static const double _arWidth = 150; // same as the native splash image
  static const double _arEndScale = 71 / 150;
  static const double _arHeight = _arWidth / (51 / 24); // logo_ar.svg aspect

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      FlutterNativeSplash.remove(); // our first frame is identical → no jump
      _start();
    });
  }

  Future<void> _start() async {
    final completedFuture = widget.onboardingRepository.isCompleted();
    await Future<void>.delayed(const Duration(milliseconds: 250));
    if (!mounted) return;
    await _c.forward();
    final completed = await completedFuture;
    await Future<void>.delayed(const Duration(milliseconds: 700));
    if (!mounted) return;
    Navigator.pushReplacementNamed(context, completed ? Routes.login : Routes.onboarding);
  }

  @override
  void dispose() {
    _c.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final c = context.loqma;
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        backgroundColor: c.primary,
        body: Stack(
          fit: StackFit.expand,
          children: [
            // gradient fades in over the flat native colour
            FadeTransition(
              opacity: _fade,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [c.primary, c.primaryPressed],
                  ),
                ),
              ),
            ),
            // rings grow out from the centre
            for (final size in const [260.0, 180.0])
              Center(
                child: FadeTransition(
                  opacity: _fade,
                  child: _Move(
                    animation: _move,
                    offset: (t) => Offset(0, -22 * t),
                    scale: (t) => 0.45 + 0.55 * t,
                    child: RepaintBoundary(child: Ring(size: size)),
                  ),
                ),
              ),
            // "loqma." appears above
            Center(
              child: FadeTransition(
                opacity: _fade,
                child: _Move(
                  animation: _move,
                  offset: (t) => Offset(0, -45 + 12 * (1 - t)),
                  scale: (t) => 0.85 + 0.15 * t,
                  child: const RepaintBoundary(
                    child: LoqmaLogo.en(height: 56, color: Colors.white),
                  ),
                ),
              ),
            ),
            // "لُقْمَة" shrinks into place; white → peach as a cross-fade
            Center(
              child: _Move(
                animation: _move,
                offset: (t) => Offset(0, 14 * t),
                scale: (t) => 1 + (_arEndScale - 1) * t,
                child: Stack(
                  children: [
                    const RepaintBoundary(
                      child: LoqmaLogo.ar(height: _arHeight, color: Colors.white),
                    ),
                    FadeTransition(
                      opacity: _fade,
                      child: const RepaintBoundary(
                        child: LoqmaLogo.ar(height: _arHeight, color: Color(0xFFFFE3D3)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Moves/scales an already-built [child]; only the transform changes per frame.
class _Move extends StatelessWidget {
  const _Move({required this.animation, required this.offset, required this.scale, required this.child});

  final Animation<double> animation;
  final Offset Function(double t) offset;
  final double Function(double t) scale;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      child: child,
      builder: (context, child) {
        final t = animation.value;
        return Transform.translate(
          offset: offset(t),
          child: Transform.scale(scale: scale(t), child: child),
        );
      },
    );
  }
}
