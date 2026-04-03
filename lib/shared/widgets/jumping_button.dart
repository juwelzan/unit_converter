import 'package:flutter/material.dart';
import 'package:vibration/vibration.dart';

class JumpingButton extends StatefulWidget {
  final double? height, width;
  final EdgeInsetsGeometry? padding;
  final Widget? child;
  final BorderRadius? borderRadius;
  final BoxBorder? border;
  final List<BoxShadow>? boxShadow;
  final Color? color;
  final BoxShape shape;
  final int? duration;

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

    this.onTap,
    this.shape = BoxShape.rectangle,
    this.duration,
  });

  @override
  State<JumpingButton> createState() => _JumpingButtonState();
}

class _JumpingButtonState extends State<JumpingButton>
    with AutomaticKeepAliveClientMixin {
  Duration _duration() => Duration(milliseconds: widget.duration ?? 60);

  Future<void> vibration(int d) async {
    if (await Vibration.hasVibrator()) {
      Vibration.vibrate(duration: d);
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return TweenAnimationBuilder(
      tween: Tween(begin: 1, end: isClick ? 0.9 : 1),
      duration: _duration(),
      builder: (context, value, child) {
        return AnimatedScale(
          scale: value.toDouble(),
          duration: _duration(),
          child: child,
        );
      },
      child: GestureDetector(
        onLongPressStart: (details) async {
          await vibration(30);
          setState(() => isClick = true);
        },
        onLongPressEnd: (details) async {
          await vibration(50);
          setState(() => isClick = false);
          if (widget.onTap != null) widget.onTap!();
        },
        onTap: clickUpdate,
        child: Container(
          padding: widget.padding,
          height: widget.height,
          width: widget.width,
          decoration: BoxDecoration(
            borderRadius: widget.borderRadius,
            border: widget.border,
            boxShadow: widget.boxShadow,
            color: widget.color ?? Colors.deepPurple,
            shape: widget.shape,
          ),
          child: widget.child,
        ),
      ),
    );
  }

  bool isClick = false;

  void clickUpdate() async {
    setState(() => isClick = true);
    await Future.delayed(_duration(), () => setState(() => isClick = false));
    await vibration(50);
    if (widget.onTap != null) widget.onTap!();
  }

  @override
  bool get wantKeepAlive => true;
}
