import 'package:flutter/material.dart';

class CustomTextSection extends StatelessWidget {
  final String _title;
  final String _body;

  static const double _hPad = 16.0;

  CustomTextSection(this._title, this._body);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
          child: Text(
            _title,
            style: Theme.of(context).textTheme.title,
          ),
          padding: const EdgeInsets.fromLTRB(_hPad, 32.0, _hPad, 4.0),
        ),
        Container(
          child: Text(_body),
          padding: const EdgeInsets.fromLTRB(_hPad, 32.0, _hPad, 4.0),
        ),
      ],
    );
  }
}
