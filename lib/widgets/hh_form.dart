import 'package:flutter/material.dart';

import 'package:twenty20_mobile/widgets/hh_raised_button.dart';

class HHForm extends StatelessWidget {
  const HHForm({
    Key key,
    GlobalKey formKey,
    @required List<Widget> children,
    @required Function onPressed,
    @required String submitButtonText,
  })  : _formKey = formKey,
        _children = children,
        _onPressed = onPressed,
        _submitButtonText = submitButtonText,
        super(key: key);

  final GlobalKey _formKey;
  final List<Widget> _children;
  final Function _onPressed;
  final String _submitButtonText;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ..._children,
          Container(
            alignment: Alignment.center,
            child: HHRaisedButton.primaryMedium(
              title: _submitButtonText,
              onPressed: _onPressed,
            ),
          ),
        ],
      ),
    );
  }
}
