import 'package:flutter/material.dart';
import 'package:twenty20_mobile/styles/color_themes.dart';
import 'package:twenty20_mobile/widgets/hh_icon.dart';
import 'package:twenty20_mobile/widgets/scale_widget.dart';

class HHCheckBox extends StatelessWidget {
  const HHCheckBox({
    Key key,
    @required bool state,
  })  : _state = state,
        super(key: key);

  final bool _state;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 15,
      width: 15,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
        color: ColorThemes.secondary,
      ),
      child: ScaleWidget(
        child: _state ? HHIcon.secondarySmall(Icons.check) : null,
      ),
    );
  }
}
