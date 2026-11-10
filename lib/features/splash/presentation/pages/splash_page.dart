import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:loqma_food_delivery_app/core/router/routes.dart';
import 'package:loqma_food_delivery_app/core/theme/app_colors.dart';
import 'package:loqma_food_delivery_app/core/widgets/loqma_logo.dart';
import 'package:loqma_food_delivery_app/features/auth/domain/repositories/auth_repository.dart';
import 'package:loqma_food_delivery_app/features/onboarding/domain/onboarding_repository.dart';
import 'package:loqma_food_delivery_app/features/splash/presentation/widgets/ring.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({
    super.key,
    required this.onboardingRepository,
    required this.authRepository,
  });

  final OnboardingRepository onboardingRepository;
  final AuthRepository authRepository;

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with SingleTickerProviderStateMixin {
  late final AnimationController _c =
      AnimationController(vsync: this, duration: const Duration(milliseconds: 900));
  late final Animation<double> _move = CurvedAnimation(parent: _c, curve: Curves.easeOutBack);
  late final Animation<double> _fade = CurvedAnimation(parent: _c, curve: Curves.easeOut);

  static const double _arWidth = 150;
  static const double _arEndScale = 71 / 150;
  static const double _arHeight = _arWidth / (51 / 24);

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      FlutterNativeSplash.remove();
      _start();
    });
  }

  Future<void> _start() async {
    final completedFuture = widget.onboardingRepository.isCompleted();
    final loggedInFuture = widget.authRepository.isLoggedIn();
    await Future<void>.delayed(const Duration(milliseconds: 250));
    if (!mounted) return;
    await _c.forward();
    final completed = await completedFuture;
    final loggedIn = await loggedInFuture;
    await Future<void>.delayed(const Duration(milliseconds: 700));
    if (!mounted) return;

    // First time -> onboarding, logged in -> home, otherwise -> login
    String next = Routes.login;
    if (!completed) {
      next = Routes.onboarding;
    } else if (loggedIn) {
      next = Routes.home;
    }
    Navigator.pushReplacementNamed(context, next);
  }

  @override
  void dispose() {
    _c.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        backgroundColor: context.loqma.primary,
        body: Stack(
          fit: StackFit.expand,
          children: [
            FadeTransition(
              opacity: _fade,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [context.loqma.primary, context.loqma.primaryPressed],
                  ),
                ),
              ),
            ),
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
