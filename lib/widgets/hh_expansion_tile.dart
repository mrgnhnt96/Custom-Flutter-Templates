import 'package:flutter/material.dart';
import 'package:twenty20_mobile/styles/color_themes.dart';

class HHHHExpansionTile extends StatelessWidget {
  const HHHHExpansionTile({
    Key key,
    @required Widget title,
    Widget subtitle: const Text(''),
    List<Widget> children,
  })  : _title = title,
        _subtitle = subtitle,
        _children = children,
        super(key: key);

  final Widget _title;
  final Widget _subtitle;
  final List<Widget> _children;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        dividerColor: Colors.transparent,
      ),
      child: ExpansionTile(
        title: _title,
        subtitle: _subtitle,
        children: [
          Container(
            color: ColorThemes.grayBackground,
            child: Column(children: _children),
          ),
        ],
      ),
    );
  }
}
