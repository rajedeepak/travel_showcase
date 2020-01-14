import 'package:flutter/material.dart';
import 'package:location_display/models/location.dart';
import 'image_banner.dart';
import 'text_section.dart';

class LocationDetail extends StatelessWidget {
  final int _locationId;


  LocationDetail(this._locationId);

  @override
  Widget build(BuildContext context) {
//    final locations = Location.fetchAll();
    final location = Location.fetchByID(_locationId);


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(location.name),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          ImageBanner(location.imagePath,200.0),

          ].. addAll(textSections(location)),
      ),
    );
  }

  List<Widget> textSections(Location location) {
    return location.facts.map((fact) => CustomTextSection(fact.title, fact.text)).toList();
  }

}
