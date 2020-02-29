import 'package:flutter/material.dart';

class ScaleWidget extends StatelessWidget {
  const ScaleWidget({Key key, @required this.child, this.alignment = Alignment.centerLeft}) : super(key: key);

  final Widget child;
  final Alignment alignment;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: SizedBox(
          child: child,
        ),
      ),
    );
  }
}
