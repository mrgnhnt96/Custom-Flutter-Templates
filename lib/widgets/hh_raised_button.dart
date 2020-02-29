import 'package:flutter/material.dart';

import 'package:twenty20_mobile/styles/color_themes.dart';
import 'package:twenty20_mobile/styles/text_themes.dart';

class HHRaisedButton extends StatelessWidget {
  HHRaisedButton({
    this.heightPercent: 0.055,
    this.isCircular,
    @required this.forceOneLine,
    @required this.size,
    @required this.color,
    @required this.widthPercent,
    @required this.title,
    @required this.onPressed,
    @required this.textAlignment,
    @required this.fontColor,
  }) : super();

  final bool forceOneLine;
  final double size;
  final bool isCircular;
  final double heightPercent;
  final Color color;
  final Color fontColor;
  final double widthPercent;
  final String title;
  final Function onPressed;
  final Alignment textAlignment;

  static const double smallButtonWidth = .25;
  static const double mediumButtonWidth = .5;
  static const double largeButtonWidth = 1;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(isCircular ? 30 : 10),
      ),
      color: color,
      onPressed: onPressed,
      child: SizedBox(
        height: MediaQuery.of(context).size.height * heightPercent,
        width: MediaQuery.of(context).size.width * widthPercent,
        child: Align(
          alignment: textAlignment,
          child: Text(
            title,
            maxLines: forceOneLine ? 1 : null,
            textAlign: TextAlign.center,
            style: TextThemes.button.copyWith(
              color: fontColor,
              fontSize: size,
            ),
          ),
        ),
      ),
    );
  }

  factory HHRaisedButton.primarySmall({
    bool isCircular: false,
    @required Function onPressed,
    @required String title,
    Alignment textAlignment: Alignment.center,
    bool forceOneLine: false,
  }) {
    return HHRaisedButton(
      isCircular: isCircular,
      title: title,
      textAlignment: textAlignment,
      forceOneLine: forceOneLine,
      color: ColorThemes.primary,
      fontColor: ColorThemes.onPrimary,
      onPressed: onPressed,
      size: TextThemes.buttonSmall,
      widthPercent: HHRaisedButton.smallButtonWidth,
    );
  }

  factory HHRaisedButton.primaryMedium({
    bool isCircular: false,
    @required Function onPressed,
    @required String title,
    Alignment textAlignment: Alignment.center,
    bool forceOneLine: false,
  }) {
    return HHRaisedButton(
      isCircular: isCircular,
      title: title,
      textAlignment: textAlignment,
      forceOneLine: forceOneLine,
      color: ColorThemes.primary,
      fontColor: ColorThemes.onPrimary,
      onPressed: onPressed,
      size: TextThemes.buttonMedium,
      widthPercent: HHRaisedButton.mediumButtonWidth,
    );
  }

  factory HHRaisedButton.primaryLarge({
    bool isCircular: false,
    @required Function onPressed,
    @required String title,
    Alignment textAlignment: Alignment.center,
    bool forceOneLine: false,
  }) {
    return HHRaisedButton(
      isCircular: isCircular,
      title: title,
      textAlignment: textAlignment,
      forceOneLine: forceOneLine,
      color: ColorThemes.primary,
      fontColor: ColorThemes.onPrimary,
      onPressed: onPressed,
      size: TextThemes.buttonLarge,
      widthPercent: HHRaisedButton.largeButtonWidth,
    );
  }

  factory HHRaisedButton.secondarySmall({
    bool isCircular: false,
    @required Function onPressed,
    @required String title,
    Alignment textAlignment: Alignment.center,
    bool forceOneLine: false,
  }) {
    return HHRaisedButton(
      isCircular: isCircular,
      title: title,
      textAlignment: textAlignment,
      forceOneLine: forceOneLine,
      color: ColorThemes.secondary,
      fontColor: ColorThemes.onSecondary,
      onPressed: onPressed,
      size: TextThemes.buttonSmall,
      widthPercent: HHRaisedButton.smallButtonWidth,
    );
  }

  factory HHRaisedButton.secondaryMedium({
    bool isCircular: false,
    @required Function onPressed,
    @required String title,
    Alignment textAlignment: Alignment.center,
    bool forceOneLine: false,
  }) {
    return HHRaisedButton(
      isCircular: isCircular,
      title: title,
      textAlignment: textAlignment,
      forceOneLine: forceOneLine,
      color: ColorThemes.secondary,
      fontColor: ColorThemes.onSecondary,
      onPressed: onPressed,
      size: TextThemes.buttonMedium,
      widthPercent: HHRaisedButton.mediumButtonWidth,
    );
  }

  factory HHRaisedButton.secondaryLarge({
    bool isCircular: false,
    @required Function onPressed,
    @required String title,
    Alignment textAlignment: Alignment.center,
    bool forceOneLine: false,
  }) {
    return HHRaisedButton(
      isCircular: isCircular,
      title: title,
      textAlignment: textAlignment,
      forceOneLine: forceOneLine,
      color: ColorThemes.secondary,
      fontColor: ColorThemes.onSecondary,
      onPressed: onPressed,
      size: TextThemes.buttonLarge,
      widthPercent: HHRaisedButton.largeButtonWidth,
    );
  }

  factory HHRaisedButton.colorSmall({
    bool isCircular: false,
    @required Function onPressed,
    @required String title,
    @required Color color,
    @required Color fontColor,
    Alignment textAlignment: Alignment.center,
    bool forceOneLine: false,
  }) {
    return HHRaisedButton(
      isCircular: isCircular,
      title: title,
      textAlignment: textAlignment,
      forceOneLine: forceOneLine,
      color: color,
      fontColor: fontColor,
      onPressed: onPressed,
      size: TextThemes.buttonSmall,
      widthPercent: smallButtonWidth,
    );
  }

  factory HHRaisedButton.colorMedium({
    bool isCircular: false,
    @required Function onPressed,
    @required String title,
    @required Color color,
    @required Color fontColor,
    Alignment textAlignment: Alignment.center,
    bool forceOneLine: false,
  }) {
    return HHRaisedButton(
      isCircular: isCircular,
      title: title,
      textAlignment: textAlignment,
      forceOneLine: forceOneLine,
      color: color,
      fontColor: fontColor,
      onPressed: onPressed,
      size: TextThemes.buttonMedium,
      widthPercent: HHRaisedButton.mediumButtonWidth,
    );
  }

  factory HHRaisedButton.colorLarge({
    bool isCircular: false,
    @required Function onPressed,
    @required String title,
    @required Color color,
    @required Color fontColor,
    Alignment textAlignment: Alignment.center,
    bool forceOneLine: false,
  }) {
    return HHRaisedButton(
      isCircular: isCircular,
      title: title,
      textAlignment: textAlignment,
      forceOneLine: forceOneLine,
      color: color,
      fontColor: fontColor,
      onPressed: onPressed,
      size: TextThemes.buttonLarge,
      widthPercent: HHRaisedButton.largeButtonWidth,
    );
  }
}
