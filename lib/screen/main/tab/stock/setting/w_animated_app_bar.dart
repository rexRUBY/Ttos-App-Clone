import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_arrow.dart';
import 'package:flutter/material.dart';

class AnimatedAppBar extends StatefulWidget {
  final String title;
  final ScrollController controller;

  const AnimatedAppBar(this.title, {super.key, required this.controller});

  @override
  State<AnimatedAppBar> createState() => _AnimatedAppBarState();
}

class _AnimatedAppBarState extends State<AnimatedAppBar> {
  late Duration duration;
  double scrollPosition = 0;

  @override
  void initState() {
    duration = 10.milliseconds;
    widget.controller.addListener(() {
      scrollPosition = widget.controller.position.pixels;
    });
    super.initState();
  }

  bool get isTriggered => scrollPosition > 80;
  double getValue(double initial, double target) {
    if(isTriggered) {
      return target;
    }
    double fraction = scrollPosition / 80;
    return initial + (target - initial) * fraction;
  }

  bool get isNotTriggered => !isTriggered;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: context.backgroundColor,
      child: SafeArea(
        child: Stack(
          children: [
            Tap(
              onTap: () => Nav.pop(context),
              child: Arrow(
                direction: AxisDirection.left,
              ).p20(),
            ),
            AnimatedContainer(
              duration: duration,
              padding: EdgeInsets.only(left: isNotTriggered ? 20 : 50, top: isNotTriggered ? 50 : 15),
              child: AnimatedDefaultTextStyle(
                  child: widget.title.text.make(),
                  style: TextStyle(fontSize: isNotTriggered ? 30 : 18, fontWeight: FontWeight.bold),
                  duration: duration),
            )
          ],
        ),
      ),
    );
  }
}
