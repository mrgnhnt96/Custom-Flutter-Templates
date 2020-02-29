import 'package:flutter/material.dart';

import 'package:twenty20_mobile/styles/color_themes.dart';
import 'package:twenty20_mobile/styles/text_themes.dart';

class HHFlatButton extends StatelessWidget {
  HHFlatButton({
    @required this.size,
    @required this.color,
    @required this.title,
    @required this.onPressed,
  }) : super();

  final double size;
  final Color color;
  final String title;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      onPressed: onPressed,
      child: Center(
        child: Text(
          title.toUpperCase(),
          style: TextThemes.button.copyWith(
            color: color,
            fontSize: size,
          ),
        ),
      ),
    );
  }

  factory HHFlatButton.primarySmall({
    @required Function onPressed,
    @required String title,
  }) {
    return HHFlatButton(
      title: title,
      color: ColorThemes.primary,
      onPressed: onPressed,
      size: TextThemes.buttonSmall,
    );
  }

  factory HHFlatButton.primaryMedium({
    @required Function onPressed,
    @required String title,
  }) {
    return HHFlatButton(
      title: title,
      color: ColorThemes.primary,
      onPressed: onPressed,
      size: TextThemes.buttonMedium,
    );
  }

  factory HHFlatButton.primaryLarge({
    @required Function onPressed,
    @required String title,
  }) {
    return HHFlatButton(
      title: title,
      color: ColorThemes.primary,
      onPressed: onPressed,
      size: TextThemes.buttonLarge,
    );
  }

  factory HHFlatButton.secondarySmall({
    @required Function onPressed,
    @required String title,
  }) {
    return HHFlatButton(
      title: title,
      color: ColorThemes.secondary,
      onPressed: onPressed,
      size: TextThemes.buttonSmall,
    );
  }

  factory HHFlatButton.secondaryMedium({
    @required Function onPressed,
    @required String title,
  }) {
    return HHFlatButton(
      title: title,
      color: ColorThemes.secondary,
      onPressed: onPressed,
      size: TextThemes.buttonMedium,
    );
  }

  factory HHFlatButton.secondaryLarge({
    @required Function onPressed,
    @required String title,
  }) {
    return HHFlatButton(
      title: title,
      color: ColorThemes.secondary,
      onPressed: onPressed,
      size: TextThemes.buttonLarge,
    );
  }

  factory HHFlatButton.onPrimarySmall({
    @required Function onPressed,
    @required String title,
  }) {
    return HHFlatButton(
      title: title,
      color: ColorThemes.onPrimary,
      onPressed: onPressed,
      size: TextThemes.buttonSmall,
    );
  }

  factory HHFlatButton.onPrimaryMedium({
    @required Function onPressed,
    @required String title,
  }) {
    return HHFlatButton(
      title: title,
      color: ColorThemes.onPrimary,
      onPressed: onPressed,
      size: TextThemes.buttonMedium,
    );
  }

  factory HHFlatButton.onPrimaryLarge({
    @required Function onPressed,
    @required String title,
  }) {
    return HHFlatButton(
      title: title,
      color: ColorThemes.onPrimary,
      onPressed: onPressed,
      size: TextThemes.buttonLarge,
    );
  }

  factory HHFlatButton.onSecondarySmall({
    @required Function onPressed,
    @required String title,
  }) {
    return HHFlatButton(
      title: title,
      color: ColorThemes.onSecondary,
      onPressed: onPressed,
      size: TextThemes.buttonSmall,
    );
  }

  factory HHFlatButton.onSecondaryMedium({
    @required Function onPressed,
    @required String title,
  }) {
    return HHFlatButton(
      title: title,
      color: ColorThemes.onSecondary,
      onPressed: onPressed,
      size: TextThemes.buttonMedium,
    );
  }

  factory HHFlatButton.onSecondaryLarge({
    @required Function onPressed,
    @required String title,
  }) {
    return HHFlatButton(
      title: title,
      color: ColorThemes.onSecondary,
      onPressed: onPressed,
      size: TextThemes.buttonLarge,
    );
  }

  factory HHFlatButton.colorSmall({
    @required Function onPressed,
    @required String title,
    @required Color color,
    @required Color fontColor,
  }) {
    return HHFlatButton(
      title: title,
      color: color,
      onPressed: onPressed,
      size: TextThemes.buttonSmall,
    );
  }

  factory HHFlatButton.colorMedium({
    @required Function onPressed,
    @required String title,
    @required Color color,
    @required Color fontColor,
  }) {
    return HHFlatButton(
      title: title,
      color: color,
      onPressed: onPressed,
      size: TextThemes.buttonMedium,
    );
  }

  factory HHFlatButton.colorLarge({
    @required Function onPressed,
    @required String title,
    @required Color color,
    @required Color fontColor,
  }) {
    return HHFlatButton(
      title: title,
      color: color,
      onPressed: onPressed,
      size: TextThemes.buttonLarge,
    );
  }
}
