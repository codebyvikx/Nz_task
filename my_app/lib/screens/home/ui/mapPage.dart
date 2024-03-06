import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  static const LatLng _jaipur = LatLng(26.907524, 75.739639);
  static const LatLng _jothwara = LatLng(26.958302, 75.743347);
  static const LatLng _hospital = LatLng(26.9269, 75.7463);
  static const LatLng _static = LatLng(26.9269, 75.7183);
  static const LatLng _mall = LatLng(26.958302, 75.721447);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GoogleMap(
      initialCameraPosition: CameraPosition(target: _jaipur, zoom: 13),
      markers: {
        Marker(
            markerId: MarkerId("_currentLocation"),
            icon: BitmapDescriptor.defaultMarker,
            position: _jaipur),
        Marker(
            markerId: MarkerId("_sourceLocation"),
            icon: BitmapDescriptor.defaultMarker,
            position: _jothwara),
        Marker(
            markerId: MarkerId("_hospitalLocatiion"),
            icon: BitmapDescriptor.defaultMarker,
            position: _hospital),
        Marker(
            markerId: MarkerId("_staticLocatiion"),
            icon: BitmapDescriptor.defaultMarker,
            position: _static),
        Marker(
            markerId: MarkerId("_mallLacation"),
            icon: BitmapDescriptor.defaultMarker,
            position: _mall),
      },
    ));
  }
}
