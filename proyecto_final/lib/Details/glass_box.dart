import 'dart:ui';

import 'package:flutter/material.dart';

final _borderRadius = BorderRadius.circular(20.0);

/*class GlassBox extends StatelessWidget {

  final width;
  final height;
  final child;

  GlassBox({
    required this.width,
    required this.height,
    required this.child,

    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: _borderRadius,
      child: Container(
        width: width,
        height: height,
        child: Stack(
          children: [
            BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 2,
                sigmaY: 2,
              ),
              child: Container(),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: _borderRadius,
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.white.withOpacity(0.7),
                        Colors.white.withOpacity(0.1),
                      ])),
            )
          ],
        ),
      ),
    );
  }
}*/

class FrostedGlassBox extends StatelessWidget {
  final double width, height;
  final Widget child;

  const FrostedGlassBox({Key? key, required this.width,required this.height, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: _borderRadius,
      child: Container(
        width: width,
        height: height,
        child: Stack(
          children: [
            BackdropFilter(filter: ImageFilter.blur(
                sigmaX: 7.0,
                sigmaY: 7.0,
            ), child: Container(width: width, height: height,child: Text(""))),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(color: Colors.black.withOpacity(0.25), blurRadius: 30)
                ],
                borderRadius: _borderRadius,
                border: Border.all(color: Colors.white.withOpacity(0.2), width: 1.0),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.white.withOpacity(0.5),
                      Colors.white.withOpacity(0.2),
                    ],
                  stops: [0.0,1.0]
                ),
              ),
              child: child,
            ),
          ],
        ),
      ),
    );
  }
}

