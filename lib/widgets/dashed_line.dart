import 'package:flutter/material.dart';

class DashedLine extends StatelessWidget {
  final double lineHeight;
  final double dashLength;
  final Color color;
  final double width;

  DashedLine({
    this.lineHeight = 1,
    this.color = Colors.black,
    this.dashLength = 6,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    final _width = width == null ? MediaQuery.of(context).size.width : width;
    final dashCount = (_width / (2 * dashLength)).floor();
    return Container(
      width: _width,
      child: Flex(
        children: List.generate(dashCount, (_) {
          return SizedBox(
            width: (_width / dashCount) / 2,
            height: lineHeight,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: color,
              ),
            ),
          );
        }),
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        direction: Axis.horizontal,
      ),
    );
  }

  static vertical({double dashLength: 6, double lineHeight: 1, Color color: Colors.black, double height}) {
    return RotatedBox(
      quarterTurns: 1,
      child: DashedLine(
        lineHeight: lineHeight,
        dashLength: dashLength,
        color: color,
        width: height,
      ),
    );
  }
}
