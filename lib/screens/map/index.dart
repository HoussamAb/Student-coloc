import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';

class IndexMap extends StatefulWidget {
  IndexMap({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _IndexMapState createState() => _IndexMapState();
}

class _IndexMapState extends State<IndexMap> {
  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: MapOptions(
        center: LatLng(51.5, -0.09),
        zoom: 13.0,
      ),
      layers: [
        new TileLayerOptions(
            urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
            subdomains: ['a', 'b', 'c']
        ),
        new MarkerLayerOptions(
          markers: [
            new Marker(
              width: 80.0,
              height: 80.0,
              point: LatLng(51.5, -0.09),
              builder: (ctx) =>
              new Container(
                child: Icon(Icons.room),
              ),
            ),
          ],
        ),
      ],
    );
  }
}