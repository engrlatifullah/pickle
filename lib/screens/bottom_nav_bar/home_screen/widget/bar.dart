import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:simple_animations/animation_builder/play_animation_builder.dart';
import 'package:confetti/confetti.dart';

class Bar extends StatefulWidget {
  final double height;
  final bool? isAnimation;
  final Color color;

  Bar({required this.height, this.isAnimation, required this.color});

  @override
  State<Bar> createState() => _BarState();
}

class _BarState extends State<Bar> {
  ConfettiController controller = ConfettiController();

  @override
  void initState() {
    Timer(Duration(seconds: 1), () {
      controller.play();
    });
    super.initState();
  }

  void initController() {
    controller =
        ConfettiController(duration: const Duration(seconds: 1));
  }

  final int _baseDurationMs = 1000;

  final double _maxElementHeight = 100;

  @override
  Widget build(BuildContext context) {
    return PlayAnimationBuilder(
      duration: Duration(milliseconds: 0),
      tween: Tween(begin: 0.0, end: widget.height),
      builder: (context, animatedHeight, _) {
        return Stack(
          alignment: Alignment.bottomCenter,
          children: [
            SizedBox(
                height: (animatedHeight * _maxElementHeight) + 60,
                child: Image.asset(
                  "assets/jar.png",
                  fit: BoxFit.cover,
                )),

            PlayAnimationBuilder(
              duration: Duration(
                  milliseconds: (widget.height * 2 * _baseDurationMs).round()),
              tween: Tween(begin: 0.0, end: widget.height),
              builder: (context, animatedHeight, _) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text("${widget.height * 100} %"),
                      SizedBox(height: 10),
                      Container(
                        width: 30,
                        height: animatedHeight * _maxElementHeight,
                        color: widget.color,
                      ),
                    ],
                  ),
                );
              },
            ),

            widget.isAnimation!
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ConfettiWidget(
                        confettiController: controller,
                        blastDirection: -pi / 2,
                        maximumSize: Size(30, 50),
                        gravity: 1,
                        createParticlePath: drawStar`,
                      ),
                      SizedBox(
                        height: (animatedH  eight * _maxElementHeight) + 60,
                      ),
                    ],
                  )
                : SizedBox(),

            // PlayAnimationBuilder(
            //   duration: Duration(milliseconds: (height *3* _baseDurationMs).round()),
            //   tween: Tween(begin: 0.0, end: height),
            //   builder: (context, animatedHeight, _) {
            //     return   image!.isEmpty ? SizedBox() :  image! == null ? SizedBox() : Column(
            //       children: [
            //         SizedBox(
            //             height: (animatedHeight * _maxElementHeight)+ 1 ,
            //             child: Image.asset(image!
            //             )),
            //         SizedBox(
            //             height: (animatedHeight * _maxElementHeight) + 30
            //           ,),
            //
            //       ],
            //     )
            //     ;
            //   },
            // ),
          ],
        );
      },
    );
  }
}
Path drawStar(Size size) {
  // Method to convert degree to radians
  double degToRad(double deg) => deg * (pi / 180.0);

  const numberOfPoints = 5;
  final halfWidth = size.width / 2;
  final externalRadius = halfWidth;
  final internalRadius = halfWidth / 2.5;
  final degreesPerStep = degToRad(360 / numberOfPoints);
  final halfDegreesPerStep = degreesPerStep / 2;
  final path = Path();
  final fullAngle = degToRad(360);
  path.moveTo(size.width, halfWidth);

  for (double step = 0; step < fullAngle; step += degreesPerStep) {
    path.lineTo(halfWidth + externalRadius * cos(step),
        halfWidth + externalRadius * sin(step));
    path.lineTo(halfWidth + internalRadius * cos(step + halfDegreesPerStep),
        halfWidth + internalRadius * sin(step + halfDegreesPerStep));
  }
  path.close();
  return path;
}