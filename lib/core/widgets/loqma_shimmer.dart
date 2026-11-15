import 'package:flutter/material.dart';
import 'package:loqma_food_delivery_app/core/theme/app_colors.dart';

// Shimmer without a package: a warm orange light that sweeps over the child.
// Every box inside the child should have a solid color (see SkeletonBox).
class LoqmaShimmer extends StatefulWidget {
  const LoqmaShimmer({super.key, required this.child});

  final Widget child;

  @override
  State<LoqmaShimmer> createState() => _LoqmaShimmerState();
}

class _LoqmaShimmerState extends State<LoqmaShimmer>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 1400),
  )..repeat();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.loqma;
    // The light moves with the reading direction (left->right or right->left)
    final isRtl = Directionality.of(context) == TextDirection.rtl;

    return AnimatedBuilder(
      animation: _controller,
      child: widget.child,
      builder: (context, child) {
        return ShaderMask(
          // srcATop: paint the gradient only where the child has pixels
          blendMode: BlendMode.srcATop,
          shaderCallback: (bounds) {
            return LinearGradient(
              begin: isRtl ? const Alignment(1, -0.3) : const Alignment(-1, -0.3),
              end: isRtl ? const Alignment(-1, 0.3) : const Alignment(1, 0.3),
              colors: [
                colors.borderDefault,
                colors.primaryTint,
                colors.borderDefault,
              ],
              stops: const [0.35, 0.5, 0.65],
              transform: _SlideGradient(_controller.value, isRtl: isRtl),
            ).createShader(bounds);
          },
          child: child,
        );
      },
    );
  }
}

// Moves the gradient from outside one side of the screen to the other
class _SlideGradient extends GradientTransform {
  const _SlideGradient(this.percent, {required this.isRtl});

  final double percent;
  final bool isRtl;

  @override
  Matrix4 transform(Rect bounds, {TextDirection? textDirection}) {
    // percent 0 -> 1 becomes -width -> +width
    final dx = bounds.width * (percent * 2 - 1);
    return Matrix4.translationValues(isRtl ? -dx : dx, 0, 0);
  }
}

// A gray block used to draw the skeleton shapes
class SkeletonBox extends StatelessWidget {
  const SkeletonBox({
    super.key,
    this.width,
    this.height,
    this.radius = 8,
    this.isCircle = false,
  });

  final double? width;
  final double? height;
  final double radius;
  final bool isCircle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: context.loqma.borderDefault,
        shape: isCircle ? BoxShape.circle : BoxShape.rectangle,
        borderRadius: isCircle ? null : BorderRadius.circular(radius),
      ),
    );
  }
}
