import 'package:flutter/material.dart';

import 'package:twenty20_mobile/styles/color_themes.dart';

class NotificationBubble extends StatelessWidget {
  const NotificationBubble({
    Key key,
    double radius: 10,
    double elevation: 5,
  })  : _radius = radius,
        _elevation = elevation,
        super(key: key);

  final double _radius;
  final double _elevation;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: _elevation,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(_radius),
      ),
      child: ClipOval(
        child: Container(
          color: ColorThemes.error,
          height: _radius,
          width: _radius,
        ),
      ),
    );
  }
}
