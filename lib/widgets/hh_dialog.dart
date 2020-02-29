import 'package:flutter/material.dart';
import 'package:twenty20_mobile/styles/color_themes.dart';

class HHDialog extends StatelessWidget {
  const HHDialog({
    Key key,
    double height: .4,

    /// percentage of the page height
    double width: .8,
    bool transparentBackground: false,
    bool isDismissible: false,
    @required Widget child,
  })  : _child = child,
        _height = height,
        _width = width,
        _transparentBackground = transparentBackground,
        _isDismissible = isDismissible,
        super(key: key);
  final Widget _child;
  final double _height;
  final double _width;
  final bool _transparentBackground;
  final bool _isDismissible;
  static void showHHDialog(
    BuildContext context,
    Widget child, {
    double height: 1,
    double width: .9,
    bool isDismissible: false,
    bool transparentBackground: false,
  }) {
    showGeneralDialog(
      context: context,
      barrierDismissible: false,
      barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
      barrierColor: null,
      transitionDuration: const Duration(milliseconds: 150),
      pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
        return HHDialog(
          height: height,
          width: width,
          child: child,
          transparentBackground: transparentBackground,
          isDismissible: isDismissible,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Center(
          child: Material(
            color: Colors.transparent,
            child: Stack(
              children: <Widget>[
                InkWell(
                  splashColor: ColorThemes.primaryVariant,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: !_transparentBackground
                          ? LinearGradient(
                              colors: [
                                Colors.black.withOpacity(.43),
                                ColorThemes.primary.withOpacity(.8),
                                ColorThemes.primary.withOpacity(.95),
                                Colors.black,
                                Colors.black,
                              ],
                              end: Alignment.topCenter + Alignment.center,
                              begin: Alignment.bottomCenter + Alignment.bottomCenter,
                            )
                          : null,
                    ),
                  ),
                  onTap: () => _isDismissible ? Navigator.pop(context) : {},
                ),
                Positioned(
                  top: ((constraints.maxHeight) - (constraints.maxHeight * _height)) / 3,
                  left: ((constraints.maxWidth) - (constraints.maxWidth * _width)) / 2,
                  child: Container(
                    width: constraints.maxWidth * _width,
                    height: constraints.maxHeight * _height,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: _child,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
