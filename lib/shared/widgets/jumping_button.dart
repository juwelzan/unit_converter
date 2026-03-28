import 'package:flutter/material.dart';

class JumpingButton extends StatefulWidget {
  final double? height, width;
  final EdgeInsetsGeometry? padding;
  final Widget? child;
  final BorderRadius? borderRadius;
  final BoxBorder? border;
  final List<BoxShadow>? boxShadow;
  final Color? color;
  final bool isSliver;
  final VoidCallback? onTap;

  const JumpingButton({
    super.key,
    this.height,
    this.width,
    this.padding,
    this.child,
    this.borderRadius,
    this.border,
    this.boxShadow,
    this.color,
    this.isSliver = false,
    this.onTap,
  });

  @override
  State<JumpingButton> createState() => _JumpingButtonState();
}

class _JumpingButtonState extends State<JumpingButton> {
  final Duration _duration = Duration(milliseconds: 60);
  @override
  Widget build(BuildContext context) {
    return widget.isSliver
        ? SliverToBoxAdapter(
            child: TweenAnimationBuilder(
              tween: Tween(begin: 1, end: isClick ? 0.8 : 1),
              duration: _duration,
              builder: (context, value, child) {
                return AnimatedScale(
                  scale: value.toDouble(),
                  duration: _duration,
                  child: child,
                );
              },
              child: GestureDetector(
                onTap: clickUpdate,
                child: Container(
                  padding: widget.padding,
                  height: widget.height ?? 100,
                  width: widget.width ?? 100,
                  decoration: BoxDecoration(
                    borderRadius:
                        widget.borderRadius ?? BorderRadius.circular(10),
                    border: widget.border,
                    boxShadow: widget.boxShadow,
                    color: widget.color ?? Colors.deepPurple,
                  ),
                  child: widget.child,
                ),
              ),
            ),
          )
        : TweenAnimationBuilder(
            tween: Tween(begin: 1, end: isClick ? 0.8 : 1),
            duration: _duration,
            builder: (context, value, child) {
              return AnimatedScale(
                scale: value.toDouble(),
                duration: _duration,
                child: child,
              );
            },
            child: GestureDetector(
              onTap: clickUpdate,
              child: Container(
                padding: widget.padding,
                height: widget.height,
                width: widget.width,
                decoration: BoxDecoration(
                  borderRadius:
                      widget.borderRadius ?? BorderRadius.circular(10),
                  border: widget.border,
                  boxShadow: widget.boxShadow,
                  color: widget.color ?? Colors.deepPurple,
                ),
                child: widget.child,
              ),
            ),
          );
  }

  bool isClick = false;

  void clickUpdate() async {
    setState(() => isClick = true);
    Future.delayed(_duration, () => setState(() => isClick = false));
    if (widget.onTap != null) widget.onTap!();
  }
}
