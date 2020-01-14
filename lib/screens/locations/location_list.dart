import 'package:flutter/material.dart';
import 'package:location_display/models/location.dart';
import '../location_detail/image_banner.dart';

class LocationList extends StatelessWidget {
  final _hList;
  final Location _location;

  LocationList(this._hList, this._location);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(
        height: _hList,
      ),
      child: Stack(children: <Widget>[
        ImageBanner(_location.imagePath, _hList),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Align(
              alignment: Alignment(0.9, 0.85),
              child: Text(
                _location.name,
                style: Theme.of(context).textTheme.display1,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(3.0),
              child: Align(
                alignment: Alignment(0.9, 0.85),
                child: OutlineButton(
                  child: Text('Press me',
                      style: Theme.of(context)
                          .textTheme
                          .display1
                          .merge(TextStyle(color: Colors.red))),
                  borderSide: BorderSide(color: Colors.red, width: 2.0),
                  onPressed: () => {},
                  onLongPress: () => {},
                ),
              ),
            )
          ],
        ),
      ]),
    );
  }
}
