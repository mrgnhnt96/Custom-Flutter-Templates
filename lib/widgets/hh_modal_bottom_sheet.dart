import 'package:flutter/material.dart';
import 'package:twenty20_mobile/styles/color_themes.dart';

class HHModalBottomSheet extends StatelessWidget {
  const HHModalBottomSheet({
    Key key,
    @required Widget child,
    @required double height,
  })  : _child = child,
        _height = height,
        super(key: key);

  final Widget _child;
  final double _height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _height + MediaQuery.of(context).viewInsets.bottom,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
          color: ColorThemes.primary,
          width: 2,
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      child: _child,
    );
  }
}
