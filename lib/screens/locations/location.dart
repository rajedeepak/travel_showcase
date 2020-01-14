import 'package:flutter/material.dart';
import '../../app.dart';
import '../../models/location.dart';
import 'location_list.dart';

class Locations extends StatelessWidget {
  final _hList = 300.0;
  @override
  Widget build(BuildContext context) {
    final locations = Location.fetchAll();
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Locations'),
        ),
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: locations
            .map((location) => GestureDetector(
                child: LocationList(_hList, location),
                onTap: () => _onLocationTap(context, location.id)))
            .toList(),
      ),
    );
  }

  void _onLocationTap(BuildContext context, int locationId) {
    Navigator.pushNamed(context, LocationDetailRoute,
        arguments: {"id": locationId});
  }
}
